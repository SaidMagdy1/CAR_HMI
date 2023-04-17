import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D 1.15
import QtQuick.Layouts 1.15
import "Audi_red"
import QtQml 2.15
Rectangle {
    width: 1000
    height: 1000

    color: "gray"

    RowLayout {
       spacing: 100
       x:100
        ColumnLayout{
             spacing: 2
             Text {
                 id: doorText
                 anchors.right: doorSlid.left
                 anchors.verticalCenter: doorSlid.verticalCenter
                 font.pixelSize: 20
                 text: qsTr("Door")
             }
             Text {
                 id: rotationText
                 anchors.right: rotationSlid.left
                 anchors.verticalCenter: rotationSlid.verticalCenter
                 font.pixelSize: 15
                 text: qsTr("Rotation")
             }
             Text {
                 id: backlightText
                 anchors.right: backLightSlid.left
                 anchors.verticalCenter: backLightSlid.verticalCenter
                 font.pixelSize: 15
                 text: qsTr("BackLight")
             }
             Slider {
                 width: 100
                 id: rotationSlid
                 value: -30
                 from: -30
                 to: 150
             }
             Slider {
                 width: 100
                 id: doorSlid
                 value: 0
                 from: 0
                 to: 30
             }


        Slider {
            width: 100
            id: backLightSlid
            value: 0
            from: 0
            to: 3
        }
        }
        ColumnLayout{
             spacing: 2

             Slider {
                 width: 100
                 id: lightSlid
                 value: 0
                 from: 0
                 to: 2
             }
             Slider {
                 width: 100
                 id: tyreSlid
                 value: 0
                 from: 1
                 to: 1.02
             }

        Slider {
            width: 100
            id: cabotSlid
            value: 0
            from: 0
            to: 30
        }
        }
    }

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment


        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
            }

            PerspectiveCamera {
                id: sceneCamera
                x: 31.433
                y: 1244.183
                z: 3304.86743
            }

            Audi_red {
                id: audi_red
                x: -230.28+rotationSlid.value*3
                y: 197.454
                z: -1103.25562-rotationSlid.value*10
                eulerRotation.z: 0.00001
                eulerRotation.y: -rotationSlid.value
                eulerRotation.x: 0
                doorAngle: doorSlid.value
                cabotAngle: cabotSlid.value
                frontLamps: lightSlid.value
                tyreScale: tyreSlid.value
                backLamps: backLightSlid.value

                Text {
                    id: pressure
//                    anchors.right: audi_red.mesh7.left
//                    anchors.top: audi_red.mesh7.bottom

                    font.pixelSize: 100
                    font.bold: true
                    text: qsTr("26 bar")
                }
            }
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Text {
        id: text1
        text: qsTr("first")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
        font.family: Constants.font.family
    }
}
