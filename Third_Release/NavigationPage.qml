import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12

Item{
    id: naviFrame
    visible: true

    width: 900// parent.width-400
    height:500 // parent.height-200
    anchors.centerIn: parent

    property string mapStyle: "mapbox://styles/olewandowski2/cjrakjdzm2jf12sp9rdgwncmh"
    property real naviTilt: 30
    property real zoom: 16.0

    property real carPositionX: 31.2
    property real carPositionY: 29.9

//    Simulation {
//        id: simulation
//    }



    Plugin {
        id: mapboxglPlugin
        name: "mapboxgl"

        PluginParameter {
            name: "mapboxgl.access_token"
            value: "pk.eyJ1Ijoib2xld2FuZG93c2tpMiIsImEiOiJjampqdnQ4MWIwdzlnM2ttZGVqcnYza2xvIn0.ni1y0Hj_mm8B0YYfX3BW9g"
        }

        PluginParameter {
            name: "mapboxgl.mapping.cache.size"
            value: 2000
        }

        PluginParameter {
            id:style
            name: "mapboxgl.mapping.additional_style_urls"
           value: mapStyle
           //value: "mapbox://styles/olewandowski2/cjrakjdzm2jf12sp9rdgwncmh"
          // value: "mapbox://styles/olewandowski2/cjn5sohnz0nr42suv510nrw4l"
           //value: "mapbox://styles/olewandowski2/cjrp872n3bo7i2slfyx8jlv75"
        }
    }

    Map {
        id: myMap
        anchors.fill: naviFrame
        plugin: mapboxglPlugin
        center: QtPositioning.coordinate(carPositionX, carPositionY)
        zoomLevel: zoom
//        bearing: 30
//        tilt: naviTilt
    }

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
        width:350
        height: 350
       // color: "#021240"
        gradient: Gradient {
                 GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
                 GradientStop { position: 0.0; color: "blue" }
             }
        radius: 200
        anchors.centerIn: naviGear
    }
    Rectangle{
        width:350
        height: 350
       // color: "#021240"
        gradient: Gradient {
                 GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
                 GradientStop { position: 0.0; color: "blue" }
             }
        radius: 200
        anchors{
            top: naviBattery.top
            topMargin: 70
            left: naviBattery.left
            leftMargin: 70
        }
    }

    Speed_Gauge{
        id:naviGear
      scale: 0.35
      x:-330
      y:-70
      value1: 180
      smode: "driving"
    }

    Battery{
        id:naviBattery
       scale : 0.35
        x:1500
        y:185
        socValue: 75
        sohValue: 75
        sotValue: 70
    }
}
