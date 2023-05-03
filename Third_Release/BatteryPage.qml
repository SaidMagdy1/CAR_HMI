import QtQuick 2.15
import QtQuick.Controls 2.15
Item{
    id:batterypage

    property bool seatBelt: false
    property bool lights: false
    property bool chargingState :false

    property int speedValue: 160
    property int temperature: 60
    property int helth: 99
    property int socValue: 20

    property string chTime:( 100- socValue)*2 +"min  TO FULL CHARGE"
    property string carMode: "n o r m a l"


    FontLoader { id:aldo ; source: "AldotheApache.ttf" }

    Image {
        id: batteryBG
        anchors.fill: parent
        source: "qrc:/img/bg.jpg"
    }


    BatteryGauge{
        id:batteryGauge
        x:parent.width/2-(batteryGauge.width*1.2)
        y:parent.height/2-(batteryGauge.height*1.25)
        scale: 0.45
        soVisiblity:false
        socValue: parent.socValue
    }
    Image {
        id: charging

        width: parent.width/16
        anchors{
            bottom: batteryGauge.bottom
            bottomMargin:-batteryGauge.height*1.25
            left: batteryGauge.left
            leftMargin: batteryGauge.width

        }

        source: "qrc:/img/charging.png"
        fillMode: Image.PreserveAspectFit
    }
    Text {
        id: chargingTime
        width: parent.width/10
        height: parent.height/10
        anchors{
            bottom: charging.top
            bottomMargin: -20
            horizontalCenter: charging.horizontalCenter
        }

        font.pixelSize: 23
        font.bold: true
        font.family: aldo.name

        color: "lightsteelblue"

        text: qsTr(chTime)
    }

    Speed_Gauge{
        id:speedGauge
        scale: .5
        speedVisiblity: false
        value1: speedValue
        anchors{
            left: batteryGauge.right
            leftMargin: 70
            top: parent.top
            topMargin: -280
        }
    }
    Text {
        id: modeText
        anchors{
            verticalCenter: chargingTime.verticalCenter
            horizontalCenter: speedGauge.horizontalCenter
        }
        color: "white"
        font.pixelSize: 40
        font.bold: true
        font.family: aldo.name

        width: parent.width/13
        height: parent.height/16
        text: qsTr("   M O D E")
    }
    Text {
        id: mode
        anchors{
            top: modeText.bottom
            topMargin: 10
            horizontalCenter: modeText.horizontalCenter
        }
        color: "#06c7f2"
        font.pixelSize: 45
        font.bold: true
        font.family: aldo.name

        width: parent.width/10.5
        height: parent.height/16
        text: qsTr(carMode)
    }
    Image {
        id:modeLeft
        height: mode.height-10
        anchors{
            bottom: mode.bottom
            right: mode.left
            rightMargin: 20
        }

        source: "qrc:/img/modeleft.png"
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id:modeRight
        height: mode.height-10
        anchors{
            bottom: mode.bottom
            left: mode.right
            leftMargin: 20
        }

        source: "qrc:/img/moderight.png"
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: beltAlarm
       anchors{
           top: mode.bottom
           topMargin: 30
           right: mode.right
           rightMargin: -20
       }
        width: parent.width/38

        fillMode: Image.PreserveAspectFit
        source: seatBelt ? "qrc:/img/seat-belt-on.png" :"qrc:/img/seat-belt-off.png"
    }
    Image {
        id: lightSignal
       anchors{
           verticalCenter: beltAlarm.verticalCenter
           right: beltAlarm.left
           rightMargin: 20
       }
        width: parent.width/42

        fillMode: Image.PreserveAspectFit
        source: lights ? "qrc:/img/car-lights-on.png" :"qrc:/img/car-lights-off.png"
    }
    Image {
        id: batteryLow
        x:270
        visible: socValue < 21
       anchors{
           bottom: parent.bottom
           bottomMargin: 50
       }
        width: parent.width/42
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/low-battery-on.png"
    }
    Image {
        id: batteryCharging

       anchors{
           bottom: batteryLow.bottom
           left: batteryLow.right
           leftMargin: 20
       }
        width: parent.width/42
        fillMode: Image.PreserveAspectFit
        source: chargingState ? "qrc:/img/charging-on.png": "qrc:/img/charging-off.png"
    }
    Image {
        id: batteryTem
        y:120
       anchors{
           right: batteryLow.left
           rightMargin: 20
       }
        height: parent.height/16
        fillMode: Image.PreserveAspectFit
        source:  "qrc:/img/battery_temperature.png"
    }
    Rectangle{
        id:temBar
        height: 8
        width: temperature*2
        color: "#f2916e"
        anchors{
            left: batteryTem.right
            leftMargin: 30
            verticalCenter: batteryTem.verticalCenter
        }
    }
    Image {
        id: batteryHelth

       anchors{
           right: batteryLow.left
           rightMargin: 20
           top: batteryTem.bottom
           topMargin: 20
       }
        height: parent.height/16
        fillMode: Image.PreserveAspectFit
        source:  "qrc:/img/battery_soh.png"
    }
    Rectangle{
        id:helthBar
        height: 8
        width: helth*2
        color: "#05f228"
        anchors{
            left: batteryHelth.right
            leftMargin: 30
            verticalCenter: batteryHelth.verticalCenter
        }
    }
    Image {
        id: batteryCharge

       anchors{
           right: batteryLow.left
           rightMargin: 20
           top: batteryHelth.bottom
           topMargin: 20
       }
        height: parent.height/16
        fillMode: Image.PreserveAspectFit
        source:  "qrc:/img/volt.png"
    }
    Rectangle{
        id:chargeBar
        height: 8
        width: socValue*2
        color: "#06c7f2"
        anchors{
            left: batteryCharge.right
            leftMargin: 30
            verticalCenter: batteryCharge.verticalCenter
        }
    }



}
