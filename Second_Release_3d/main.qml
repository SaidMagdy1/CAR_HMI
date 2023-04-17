import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import QtQuick.Scene3D 2.0
import QtQuick3D 1.15
import Qt3D.Core 2.15
import Qt3D.Render 2.15
import Qt3D.Extras 2.15
import Qt3D.Input 2.15

import "Audi_red"
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


        Image {
            id: car
            source: "qrc:/carrAudi.png"
            anchors.horizontalCenter: parent.horizontalCenter
            scale:0.5
            opacity:0.8
            y:100
        }
    }



//    Node {
//        id: standAloneScene



////        DirectionalLight {
////                    ambientColor: Qt.rgba(1.0, 1.0, 1.0, 1.0)
////                }

//                Model {
//                    source: "#Cube"
//                    y: -104
//                    scale: Qt.vector3d(3, 3, 0.1)
//                    eulerRotation.x: -90
//                    materials: [
//                        DefaultMaterial {
//                            diffuseColor: Qt.rgba(0.8, 0.8, 0.8, 1.0)
//                        }
//                    ]
//                }



//    // The predefined cameras. They have to be part of the scene, i.e. inside the root node.
//    // Animated perspective camera
//    Node {
//        PerspectiveCamera {
//            id: cameraPerspectiveOne
//            z: 600
//        }

////        PropertyAnimation on eulerRotation.x {
////            loops: Animation.Infinite
////            duration: 5000
////            to: -360
////            from: 0
////        }
//    }

//    // Stationary perspective camera
//    PerspectiveCamera {
//        id: cameraPerspectiveTwo
//        z: 600
//    }

//    // Stationary orthographic camera viewing from left
//    OrthographicCamera {
//        id: cameraOrthographicLeft
//        x: -600
//        eulerRotation.y: -90
//    }
//    }
//    View3D {
//             id: topLeftView
//             anchors.fill: parent
//             importScene: standAloneScene
//             camera: cameraOrthographicFront
//         }



//    Scene3D {
//        id: scene3d
//        anchors.fill: parent

//        focus: true
//        aspects: ["render", "logic", "input"]
//        cameraAspectRatioMode: Scene3D.AutomaticAspectRatio
//        RootEntity {}



//       }


//    }



//        Button {
//            text: "Cancel"
//            onClicked: Qt.quit()
//        }






}
//}
