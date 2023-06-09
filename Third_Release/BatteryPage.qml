import QtQuick 2.15
import QtQuick.Controls 2.15
Item{
    id:batterypage

    property bool seatBelt:mainWindow.seatBelt
    property bool lights: mainWindow.lights
    property bool chargingState :mainWindow.chargingState

    property bool mode1: mainWindow.mode1      // to switch modes
    property bool mode2: mainWindow.mode2

    property int speedValue: mainWindow.speedValue

    property int socValue: mainWindow.socValue     // from 0 to 100
    property int sohValue: mainWindow.sohValue     // from 0 to 100
    property int sotValue: mainWindow.sotValue    // from 0 to 100

    property string smode: mainWindow.smode
    property string carMode:  mainWindow.carMode
    property string chTime:( 100 - socValue)*2 +"min  TO FULL CHARGE"


    FontLoader { id:aldo ; source: "AldotheApache.ttf" }

    Image {
        id: batteryBG
        anchors.fill: parent
        source: "qrc:/img/bg.jpg"
    }


    onMode1Changed: {
        if(mode1)
            carMode="  s p o r t"
        else if(mode2)
            carMode="  e  c h o"
        else
            carMode= "n o r m a l"
    }
    onMode2Changed: {
        if(mode1)
            carMode="  s p o r t"
        else if(mode2)
            carMode="  e  c h o"
        else
            carMode= "n o r m a l"
    }



    BatteryGauge{
        id:batteryGauge
        x:parent.width/2-(batteryGauge.width*1.2)
        y:parent.height/2-(batteryGauge.height*1.2)
        scale: 0.40
        soVisiblity:false
        socValue: parent.socValue


    }
    Image {
        id: charging

        width: parent.width/17
        anchors{
            bottom: batteryGauge.bottom
            bottomMargin:-batteryGauge.height*1.09
            left: batteryGauge.left
            leftMargin: batteryGauge.width-15

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

        text: qsTr(batterypage.chTime)
    }

    Speed_Gauge{
        id:speedGauge
        scale: .5
        speedVisiblity: false
        speedValue: batterypage.speedValue
        smode: batterypage.smode
        anchors{
            left: batteryGauge.right
            leftMargin: 70
            top: parent.top
            topMargin: -320
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
        text: qsTr(batterypage.carMode)
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
        source: batterypage.seatBelt ? "qrc:/img/seat-belt-on.png" :"qrc:/img/seat-belt-off.png"
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
        source: batterypage.lights ? "qrc:/img/car-lights-on.png" :"qrc:/img/car-lights-off.png"
    }
    Image {
        id: batteryLow
        x:270
        visible: batterypage.socValue < 26
       anchors{
           bottom: parent.bottom
           bottomMargin: 40
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
        source: batterypage.chargingState ? "qrc:/img/charging-on.png": "qrc:/img/charging-off.png"
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
        width: batterypage.sotValue*2
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
        width: batterypage.sohValue*2
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
        width: batterypage.socValue*2
        color: "#06c7f2"
        anchors{
            left: batteryCharge.right
            leftMargin: 30
            verticalCenter: batteryCharge.verticalCenter
        }
    }

  HMchart{
      id:batteryChart
      anchors{
          top: batteryCharge.bottom
          topMargin:0
          left: batteryCharge.right
      }
     max:100
     min:0
     value: batterypage.socValue
     rate: 10          //10 base  so sample every rate/10 per 500ms
      //lineColor: red
   }
  Rectangle{
      id:chartFooter
      anchors.right: batteryChart.right
      anchors.left: batteryChart.left
      anchors.top: batteryChart.bottom
      height: 2
      color: "lightsteelblue"

   }
    Text{
        id:chartMinValue
        anchors{
           top: batteryChart.bottom
           topMargin: -10
           right: batteryChart.left
        }
        font.pixelSize: 14
        color: "#06c7f2"
        text: "%0- "
    }
    Text{
        id:chartMiddValue
        anchors{
            top: batteryChart.bottom
            topMargin:- (batteryChart.max/2)-5
            right: batteryChart.left
        }
        font.pixelSize: 14
        color: "#06c7f2"
        text: "%50- "
    }
    Text{
        id:chartMaxValue
        anchors{
           top: batteryChart.bottom
           topMargin:-batteryChart.max-5
           right: batteryChart.left
        }
        font.pixelSize: 14
        color: "#06c7f2"
        text: "%100- "
    }

  MouseArea{
      width: 400
      height: 400
      anchors.centerIn: parent
      onClicked: socValue = socValue - 2


      onWheel: socValue = socValue + 1

  }
}
