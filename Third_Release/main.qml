import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.15
import  QtCharts 2.15
//import QtQuick3D 1.15
//import Qt3D.Core 2.0
//import Qt3D.Render 2.0

Window {
    width: 1920
    height: 585
    visible: true
    color: "black"

    property int pages: 0


    Image {
        id: background
        source: "qrc:/img/bg.jpg"
        anchors.fill: parent

        Loader{
            id:mainLoader
            anchors.fill: parent
            source: "MainPage.qml"
        }

    }



    Image {
        id: caricon
        x:parent.width/2 + caricon.width/2

        height: pages==1 ? parent.height/14 :parent.height/16
        source:pages==1 ? "qrc:/img/car-page.on.png" :"qrc:/img/car-page.off.png"

        fillMode: Image.PreserveAspectFit
        anchors{
         top: parent.top
         topMargin: 15

        }

        MouseArea{
            anchors.fill: parent
            onClicked:{ mainLoader.source= "CarPage.qml"
                pages=1
            }
        }
    }

    Image {
        id: navigationicon

        height:pages==2 ? parent.height/20 : parent.height/25
        source: pages==2  ? "qrc:/img/navigation-page-on.png" : "qrc:/img/navigation-page-off.png"

        fillMode: Image.PreserveAspectFit
        anchors{
         top: parent.top
         topMargin: 20
         left: caricon.right
         leftMargin: 30
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{ mainLoader.source= "NavigationPage.qml"
                pages=2}
        }
    }
    Image {
        id: batteryicon


        height: pages==3 ? parent.height/14 :parent.height/16
        source:pages==3 ? "qrc:/img/battery-page.on.png" :"qrc:/img/battery-page.off.png"

        fillMode: Image.PreserveAspectFit
        anchors{
         top: parent.top
         topMargin: 15
         right: mainPageicon.left
         rightMargin: 30
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{ mainLoader.source= "BatteryPage.qml"
                pages=3
            }
        }
    }

    Image {
        id: mainPageicon


        height:pages==0 ? parent.height/20 : parent.height/16

        source: pages==0 ? "qrc:/img/main-page-on.png" :"qrc:/img/main-page-off.png"

        fillMode: Image.PreserveAspectFit
        anchors{
         top: parent.top
         topMargin: pages==0 ? 20 : 15
         right: caricon.left
         rightMargin: 30
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{ mainLoader.source= "MainPage.qml"
                pages=0}
        }
    }

//    Notification{
//        id:notification
//    }


    Footer{
        id : footer
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
    }
//    ChartView {
//       width: 400
//        height: 300
//        theme: ChartView.ChartThemeBrownSand
//        antialiasing: true

//        PieSeries {
//            id: pieSeries
//            PieSlice { label: "eaten"; value: 94.9 }
//            PieSlice { label: "not yet eaten"; value: 5.1 }
//        }
//    }

}
