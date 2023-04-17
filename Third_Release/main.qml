import QtQuick 2.2
import QtQuick.Window 2.2
import QtGraphicalEffects 1.15
//import QtQuick3D 1.15
//import Qt3D.Core 2.0
//import Qt3D.Render 2.0

Window {
    width: 1920
    height: 585
    visible: true
    color: "black"


    Image {
        id: background
        source: "bg.jpg"
        anchors.fill: parent

        Loader{
            id:mainLoader
            anchors.fill: parent
            source: "MainPage.qml"
        }

    }



    Image {
        id: caricon

       // width: parent.width/30
        height: parent.height/13
        source: "qrc:/img/carIcon.png"

        fillMode: Image.PreserveAspectFit
        anchors{
         top: parent.top
         topMargin: 20
         horizontalCenter: parent.horizontalCenter
        }

        MouseArea{
            anchors.fill: parent
            onClicked: mainLoader.source= "CarPage.qml"
        }
    }
    Image {
        id: navigationicon

       // width: parent.width/30
        height: parent.height/15
        source: "qrc:/img/navigation.png"

        fillMode: Image.PreserveAspectFit
        anchors{
         top: parent.top
         topMargin: 20
         left: caricon.right
         leftMargin: 30
        }

        MouseArea{
            anchors.fill: parent
            onClicked: mainLoader.source= "NavigationPage.qml"
        }
    }

    Image {
        id: mainPageicon

        width: parent.width/30

        source: "qrc:/img/speedometer.png"

        fillMode: Image.PreserveAspectFit
        anchors{
         top: parent.top
         topMargin: 10
         right: caricon.left
         rightMargin: 30
        }

        MouseArea{
            anchors.fill: parent
            onClicked: mainLoader.source= "MainPage.qml"
        }
    }
}
