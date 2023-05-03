 import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.3
import QtQuick.Scene3D 2.0
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0
import Qt3D.Input 2.12

ApplicationWindow {
    width: 1500
    height: 600
    visible: true
    color: "black"
//    Gauge{
//        mcolor: "red"
//        minValue: 0
//        maxValue: 100
//        paramValue: 20
//    }

    Image {
        id: background
        source: "bg.jpg"
        anchors.fill: parent

        Battery{
           // width : 220
            //height: 220
           scale : 0.45
            x:950
            y:25
            socValue: 75
            sohValue: 75
            sotValue: 70
        }
        Speed_Gauge{
          scale: 0.45
          x:-200
          y:-200
          value1: 180
          smode: "driving"
        }
        Footer{
            id : footer
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
        }

    }

//Rectangle{
//    width: parent.width/3
//    height: parent.height/3
//    x:500
//    y:300
//    color: "transparent"
//}








//        Button {
//            text: "Cancel"
//            onClicked: Qt.quit()
//        }




    Image {
        id: car
        source: "car_model.png"
        anchors.horizontalCenter: parent.horizontalCenter
        scale:0.5
        opacity:0.8
        y:100
    }


}
