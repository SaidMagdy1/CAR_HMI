import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15
import QtQuick.Controls 2.15
//import Esri.ArcGISRuntime


Item{
    id: naviFrame
    visible: true

    anchors.fill: parent

    property int speedValue: mainWindow.speedValue
    property int heatValue: mainWindow.heatValue
    property int socValue: mainWindow.socValue     // from 0 to 100
    property int sohValue: mainWindow.sohValue     // from 0 to 100
    property int sotValue: mainWindow.sotValue    // from 0 to 100

    property string smode: mainWindow.smode



    //property string mapStyle: "mapbox://styles/olewandowski2/cjrakjdzm2jf12sp9rdgwncmh"
    property real naviTilt: 30
    property real zoom: 16.0

    property real carPositionX: 31.2
    property real carPositionY: 29.9





    Plugin {
        id: mapboxglPlugin
        name:  "osm"          //with mapboxgl we have no Route
//        name:"mapboxgl"
//        PluginParameter {
//            name: "mapboxgl.access_token"
//            value: "pk.eyJ1Ijoib2xld2FuZG93c2tpMiIsImEiOiJjampqdnQ4MWIwdzlnM2ttZGVqcnYza2xvIn0.ni1y0Hj_mm8B0YYfX3BW9g"
//        }

//        PluginParameter {
//            name: "mapboxgl.mapping.cache.size"
//            value: 2000
//        }

//        PluginParameter {
//            id:style
//            name: "mapboxgl.mapping.additional_style_urls"
//           value: mapStyle
//           //value: "mapbox://styles/olewandowski2/cjrakjdzm2jf12sp9rdgwncmh"
//          // value: "mapbox://styles/olewandowski2/cjn5sohnz0nr42suv510nrw4l"
//           //value: "mapbox://styles/olewandowski2/cjrp872n3bo7i2slfyx8jlv75"
//        }
    }

    RouteQuery {
        id: routeQuery
    }

    RouteModel {             //available pathes
        id: routeModel
        plugin: mapboxglPlugin
        query: routeQuery
        autoUpdate: false
    }



    //! [Current Location]
//    PositionSource {
//        id: positionSource
//        property variant lastSearchPosition: locationAlex
//        active: true
//        updateInterval: 1000 // 2 mins
//        onPositionChanged:  {
//            var currentPosition = positionSource.position.coordinate
//            myMap.center = currentPosition
//            var distance = currentPosition.distanceTo(lastSearchPosition)
//            if (distance > 500) {
//                // 500m from last performed pizza search
//                lastSearchPosition = currentPosition
//                searchModel.searchArea = QtPositioning.circle(currentPosition)
//                searchModel.update()
//            }
//        }
//    }
    //! [Current Location]

    //! [PlaceSearchModel]
    property variant locationAlex: QtPositioning.coordinate(carPositionX, carPositionY)


//    PlaceSearchModel {
//        id: searchModel

//        plugin: mapboxglPlugin

//        searchTerm: searchInput.text
//        searchArea: QtPositioning.circle(locationAlex)

//        Component.onCompleted: update()
//    }


    Map {
        id: myMap
        anchors.fill: naviFrame
        plugin: mapboxglPlugin
        center: QtPositioning.coordinate(carPositionX, carPositionY)
        zoomLevel: zoom


        MapItemView {             //connect map with mapitems like path
            model: routeModel
            delegate: MapRoute {
                route: routeData
                line.color: "blue"
                line.width: 8
                smooth: true
                opacity: 0.8
            }
        }

        MapItemView {       // this is only the balls in the middle
            model: routeModel.status == RouteModel.Ready ? routeModel.get(0).path : null  // when its ready get first path
            delegate: MapQuickItem {
                anchorPoint.x: pathMarker.width / 2
                anchorPoint.y: pathMarker.height / 2
                coordinate: modelData

                sourceItem:Rectangle {       // the middle points shape
                    id: pathMarker
                    width: 8
                    height: 8
                    radius: 8
                    border.width: 1
                    border.color: "black"
                    color: "yellow"
                }
            }
        }

        MapItemView {
            model: routeQuery.waypoints     //start and end markers
            delegate: MapQuickItem {
                anchorPoint.x: waypointMarker.width / 1.9    //this is for distance from mouse clicked to the Icon
                anchorPoint.y: waypointMarker.height / 1.1
                coordinate: modelData

                sourceItem:Image {               // the start and end points shape
                    id: waypointMarker
                    width:30
                    height: 30

                    source: "qrc:/img/location-pin.png"
                    fillMode: Image.PreserveAspectFit
                } /*
                    Rectangle {
                    id: waypointMarker
                    width: 10
                    height: 10
                    radius: 10
                    border.width: 1
                    border.color: "black"
                    color: "red"
                }*/
            }
        }
//        MapItemView {
//            model: searchModel
//            delegate: MapQuickItem {
//                coordinate: place.location.coordinate

//                anchorPoint.x: image.width * 0.5
//                anchorPoint.y: image.height

//                sourceItem: Column {
//                    Image { id: image;
//                        width: 20
//                        fillMode: Image.PreserveAspectFit
//                        source: "qrc:/img/location-pin.png" }
//                    Text { text: title; font.bold: true }
//                }
//            }
//        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                routeQuery.addWaypoint(myMap.toCoordinate(Qt.point(mouse.x,mouse.y)))
                routeModel.update()
            }
        }



//        bearing: 30
//        tilt: naviTilt
    }



//    Connections {
//        target: searchModel
//        onStatusChanged: {
//            if (searchModel.status == PlaceSearchModel.Error)
//                console.log(searchModel.errorString());
//        }
//    }

//    function tiltIn()
//    {
//        if(naviTilt<160)
//            naviTilt+=0.1
//    }
//    function zoomIn()
//    {
//        if(zoom < 17.0)
//            zoom+=0.001
//    }

//    function moveCamera()
//    {
//        carPositionX += 0.000007
//        carPositionY += 0.000005
//    }

//    Timer {
//        id: navigtionLoop
//        interval: 16
//        repeat: true
//        running: true
//        triggeredOnStart: true
//        onTriggered: {
//            tiltIn()
//            zoomIn()
//            moveCamera()
//        }
//    }

//    Rectangle{
//        id:button1
//        x:50
//        y:100
//        width: 80
//        height: 50
//        color: "black"
//        border.width: 3
//        border.color: "red"
//        radius: 8
//        Text {
//            id: style1
//            anchors.centerIn: parent
//            font.pixelSize: 20

//            font.bold: true
//            color: "blue"
//            text: qsTr("Style1")
//        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: mapStyle ="mapbox://styles/olewandowski2/cjrp872n3bo7i2slfyx8jlv75"
//        }
//    }
//    Rectangle{
//        width: 80
//        height: 50
//        color: "black"
//        anchors{
//            top: button1.bottom
//            topMargin:20
//            right : button1.right
//        }
//        border.width: 3
//        border.color: "red"
//        radius: 8
//        Text {
//            id: style2
//            anchors.centerIn: parent
//            font.pixelSize: 20

//            font.bold: true
//            color: "blue"
//            text: qsTr("Style2")
//        }
//        MouseArea{
//            anchors.fill: parent
//            onClicked: mapStyle = "mapbox://styles/olewandowski2/cjn5sohnz0nr42suv510nrw4l"
//        }
//    }

    Rectangle{
        id : root
        x:760

        width: parent.width/5
        height:parent.height/8.5
        radius:50
        anchors{
            top: parent.top

        }

        gradient: Gradient {
            GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
            GradientStop { position: 0.0; color: "blue" }
        }
    }

    Rectangle{
        width:250
        height: 250
       // color: "#021240"
        gradient: Gradient {
                 GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
                 GradientStop { position: 0.0; color: "blue" }
             }
        radius: 200
        anchors.centerIn: naviGear
    }
    Rectangle{
        width:255
        height: 255
       // color: "#021240"
        gradient: Gradient {
                 GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
                 GradientStop { position: 0.0; color: "blue" }
             }
        radius: 200
        anchors{
            top: naviBattery.top
            topMargin: 90
            left: naviBattery.left
            leftMargin: 90
        }
    }


    Rectangle{
        id:footer
        height: 75
        gradient: Gradient {
                 GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
                 GradientStop { position: 0.0; color: "blue" }
             }
        radius: 50
        anchors{
            left: naviGear.right
            right: naviBattery.left
            rightMargin: 300
            bottom: parent.bottom
        }
    }

    Speed_Gauge{
        id:naviGear
      scale: 0.28
      x:-360
      y:-130
      speedValue:naviFrame.speedValue
      smode:naviFrame.smode
    }
    BatteryGauge{
        id:naviBattery
       scale : 0.28
        x:1550
        y:155
        socValue: naviFrame.socValue
        sohValue: naviFrame.sohValue
        sotValue: naviFrame.sotValue
    }
    Rectangle {
        id: routeReset
        width: 50
        height: 50
        radius:30
        anchors{
            top:parent.top
            topMargin: 10
            left: parent.left
            leftMargin: 10
        }

        border.width:2
        border.color:"black"

        gradient: Gradient {
                 GradientStop { position: 1.0; color: "lightsteelblue" }
                 GradientStop { position: 0.0; color: "blue" }
               }
        Text {

            anchors.centerIn: parent
            font.bold: true
            color: "black"
            text: qsTr("Reset")
       }
       MouseArea{
         anchors.fill: parent
         onClicked: {
             routeQuery.clearWaypoints()
             routeModel.reset()
           }
       }
   }
    Rectangle{
        id:searchBox
        width:250
        height: 50
        color: "lightsteelblue"
        opacity: .5

        radius: 10
       anchors{
            top: parent.top
            topMargin: 20
            left: routeReset.right
            leftMargin: 20
       }

        TextInput{
            id:searchInput
            width: 200
            height: 50
            clip: true
           anchors{
                top: parent.top
                topMargin: 15
                left: parent.left
                leftMargin: 20
           }

            color: "black"
            font.bold: true
            font.pixelSize: 20
            //anchors.centerIn: parent
       }
   }


}
