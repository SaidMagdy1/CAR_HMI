import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Item{
    id:mainPage
    property bool flasher: false
    property int transTime: mainWindow.transTime
    property bool smallPage: mainWindow.smallPage

    property bool turnRight:mainWindow.turnRight  //should be adjusted to Defualt 0 ->false
    property bool turnLeft:mainWindow.turnLeft
    property bool seatBelt:mainWindow.seatBelt
    property bool lights: mainWindow.lights
    property bool chargingState :mainWindow.chargingState
    property bool door: mainWindow.door
    property bool frontlight:mainWindow.frontlight
    property bool backlight:mainWindow.backlight

    property int speedValue: mainWindow.speedValue
    property int heatValue: mainWindow.heatValue
    property int socValue: mainWindow.socValue     // from 0 to 100
    property int sohValue: mainWindow.sohValue     // from 0 to 100
    property int sotValue: mainWindow.sotValue    // from 0 to 100

    property int tire1: mainWindow.tire1
    property int tire2: mainWindow.tire2
    property int tire3: mainWindow.tire3
    property int tire4: mainWindow.tire4
    property int flag1: 0
    property int flag2: 0
    property int flag3: 0
    property int flag0: 0

    property string smode: mainWindow.smode




    //------to_Adjust_Car2D_In_Different_Sizes----------
    property int xErorr: 350
    property int yErorr: 50

    FontLoader { id:aldo ; source: "AldotheApache.ttf" }
    //-----------------buttons_for_test--------------
//     RowLayout{
//         id:lay1
//         spacing: 2
//         Button{
//             width: 20
//             height: 20
//             text: "P"
//             onClicked: smallPage =!smallPage
//         }
//         Button{
//             width:10
//             height: 20
//             text: "<"
//             onClicked: turnLeft =!turnLeft
//         }
//         Button{
//             width: 20
//             height: 20
//             text: ">"
//             onClicked: turnRight =!turnRight
//         }

//         Button{
//             width: 10
//             height: 20
//             text: "belt"
//             onClicked: seatBelt =!seatBelt
//         }
//         Button{
//             width: 20
//             height: 20
//             text: "charge"
//             onClicked: lowPower =!lowPower
//         }
//     }

    //-------------------------------------

    anchors.fill:parent
    BatteryGauge{
       // width : 220
        //height: 220
       scale : 0.45
        x:1270
        y:0
        socValue: mainPage.socValue
        sohValue: mainPage.sohValue
        sotValue: mainPage.sotValue
    }
    Speed_Gauge{
      scale: 0.45
      x:-150
      y:-215
      speedValue: mainPage.speedValue
      heatValue: mainPage.heatValue
      smode: mainPage.smode
    }


    //---------------------------------carInMainPageConditions-----------------------

    onDoorChanged:  {
        if(door & !frontlight){
           first.start();
             flag1 = 1;
            flag0=0;
            flag2=0;
            flag3 =0;
          }
        else if(!door & frontlight){
                second.start();
                flag2=1;
                flag0=0;
                flag1=0;
                flag3 =0;
        }
        else if(door & frontlight){
               third.start();
               flag3=1;
            flag0=0;
            flag1=0;
            flag2=0;

        }
        else{
               zero.start();
               flag0=1;
               flag1=0;
               flag2=0;
               flag3 =0;
        }
      }
    onFrontlightChanged : {
        if(door & !frontlight){
           first.start();
             flag1 = 1;
            flag0=0;
            flag2=0;
            flag3 =0;
          }
        else if(!door & frontlight){
                second.start();
                flag2=1;
            flag0=0;
            flag1=0;
            flag3 =0;
        }
        else if(door & frontlight){
               third.start();
               flag3=1;
            flag0=0;
            flag1=0;
            flag2=0;

        }
        else{
               zero.start();
               flag0=1;
               flag1=0;
               flag2=0;
               flag3 =0;
        }
    }
//-------------------------------Tires_Pressure----------------
    Rectangle{
        width: 500
        height: 400
        anchors.centerIn: parent
        color: "transparent"
        visible: !mainPage.smallPage
//-------------------------------Tire1----------------
        Rectangle{
            id:fRightTire
            x:160
            y:120
            width: 25
            height: 40
            radius: 10
            opacity: 1
            color: mainPage.tire1 < 26 ? "red" :"green"
        }
        Image {
            id: arrow1
            width: parent.width/25
            anchors{
                bottom: fRightTire.verticalCenter
                bottomMargin: -10
                right: fRightTire.left
                rightMargin: 10
            }
            rotation: -45
            opacity:1
            source:  mainPage.tire1 < 26 ? "qrc:/img/red_arrow.png" :"qrc:/img/green_arrow.png"
            fillMode:Image.PreserveAspectFit

        }

        Text {
            id: pressure1
            anchors{
                bottom: arrow1.top
                right: arrow1.left
            }
            opacity: .8
            font.family:aldo.name
            font.pixelSize: 20
            font.bold: true
            color:  mainPage.tire1 < 26 ? "red" :"green"
            text: mainPage.tire1+" bar"
        }
//-------------------------------Tire2----------------
        Rectangle{
            id:fLeftTire
            x:280
            y:120
            width: 25
            height: 40
            radius: 10
            opacity: 1
            color: mainPage.tire2 < 26 ? "red" :"green"
        }
        Image {
            id: arrow2
            width: parent.width/25
            anchors{
                bottom: fLeftTire.verticalCenter
                bottomMargin: -10
                left: fLeftTire.right
                leftMargin: 10
            }
           rotation:45

            opacity:1
            source:  mainPage.tire2 < 26 ? "qrc:/img/red_arrow180.png" :"qrc:/img/green_arrow180.png"
            fillMode:Image.PreserveAspectFit

        }

        Text {
            id: pressure2
            anchors{
                bottom: arrow2.top
                left: arrow2.right
            }
            opacity: .8
            font.family:aldo.name
            font.pixelSize: 20
            font.bold: true
            color:  mainPage.tire2 < 26 ? "red" :"green"
            text: mainPage.tire2+" bar"
        }
//-------------------------------Tire3----------------
        Rectangle{
            id:bRightTire
            x:148
            y:320
            width: 25
            height: 40
            radius: 10
            opacity: 1
            color: mainPage.tire3 < 26 ? "red" :"green"
        }
        Image {
            id: arrow3
            width: parent.width/25
            anchors{
                bottom: bRightTire.verticalCenter
                bottomMargin: -10
                right: bRightTire.left
                rightMargin: 10
            }
            rotation: -45
            opacity:1
            source:  mainPage.tire2 < 26 ? "qrc:/img/red_arrow.png" :"qrc:/img/green_arrow.png"
            fillMode:Image.PreserveAspectFit

        }

        Text {
            id:pressure3
            anchors{
                bottom: arrow3.top
                right: arrow3.left
            }
            opacity: .8
            font.family:aldo.name
            font.pixelSize: 20
            font.bold: true
            color:  mainPage.tire3 < 26 ? "red" :"green"
            text: mainPage.tire3+" bar"
        }
//-------------------------------Tire4----------------
        Rectangle{
            id:bLeftTire
            x:293
            y:320
            width: 25
            height: 40
            radius: 10
            opacity: 1
            color: mainPage.tire4 < 26 ? "red" :"green"
        }
        Image {
            id: arrow4
            width: parent.width/25
            anchors{
                bottom: bLeftTire.verticalCenter
                bottomMargin: -10
                left: bLeftTire.right
                leftMargin: 10
            }
           rotation:45

            opacity:1
            source:  mainPage.tire4 < 26 ? "qrc:/img/red_arrow180.png" :"qrc:/img/green_arrow180.png"
            fillMode:Image.PreserveAspectFit

        }

        Text {
            id: pressure4
            anchors{
                bottom: arrow4.top
                left: arrow4.right
            }
            opacity: .8
            font.family:aldo.name
            font.pixelSize: 20
            font.bold: true
            color:  mainPage.tire4 < 26 ? "red" :"green"
            text: mainPage.tire4+" bar"
        }

        Image {
            id: carElevation              //tires Pressure in MainPage
            x:30
            scale: 0.8
            opacity:.4
            source: "qrc:/img/Elevation.png"
            fillMode:Image.PreserveAspectFit
            MouseArea{
                anchors.fill: parent
                onClicked: smallPage =!smallPage
            }

        }

    }





//---------------------------------carInMainPageBody-----------------------
    Rectangle{
        id:carItem

        visible: mainPage.smallPage
       anchors.fill: parent
       color:"transparent"

        Text {
            id: textt
            color: "transparent"
            text: qsTr("text")
        }


        Image {
            id: base
            source: "qrc:/img/Base1.png"
            x:295+xErorr
            y:55+yErorr
            //anchors.verticalCenter:  parent.verticalCenter

            opacity: 1
            scale: 0.6
            MouseArea{
                anchors.fill: parent
                onClicked: mainPage.smallPage =!mainPage.smallPage
            }
       }

        Image {
              id: doorwithoutL
              source: "qrc:/img/mainDoor.png"
              x:290+xErorr
              //anchors.horizontalCenter: base.horizontalCenter
              y:74+yErorr
              opacity: 0
              scale: 0.65
       }
       Image {
              id: doorwithL
              source: "qrc:/img/doorWithlight.png"
              x:280+xErorr
              //anchors.horizontalCenter: base.horizontalCenter
              y:80+yErorr
              opacity: 0
              scale: 0.69
       }
        Image {
            id: lwithoutD
            source: "qrc:/img/LighWithotDoor.png"
            x:315+xErorr
            //anchors.horizontalCenter: base.horizontalCenter
            y:75+yErorr
            opacity: 0
            scale: 0.64
       }




        ParallelAnimation{
            id:zero
           NumberAnimation{
               target: base
               property: "opacity"
               from:0
               to:1
               duration: transTime
            }


           NumberAnimation{
                target:{flag1 ? doorwithoutL : textt}
                property: "opacity"
                from:1
                to:0
                duration: mainPage.transTime
            }



           NumberAnimation{
               target:{flag2 ? lwithoutD : textt}
               property: "opacity"
               from:1
               to:0
               duration: mainPage.transTime
                }

           NumberAnimation{
               target:{flag3 ? doorwithL : textt}
               property: "opacity"
               from:1
               to:0
               duration: mainPage.transTime
                }
            }

      ParallelAnimation{
          id:first
          NumberAnimation{
              target: doorwithoutL
              property: "opacity"
              from:0
              to:1
              duration: mainPage.transTime
          }

          NumberAnimation{
              target:{flag3 ? doorwithL :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag2 ? lwithoutD :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag0 ? base :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }

      }
      ParallelAnimation{
          id:second
          NumberAnimation{
              target:lwithoutD
              property: "opacity"
              from:0
              to:1
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag1 ? doorwithoutL :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag3? doorwithL :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag0 ? base :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
      }
      ParallelAnimation{
          id:third
          NumberAnimation{
              target: doorwithL
              property: "opacity"
              from:0
              to:1
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag1 ? doorwithoutL :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag2 ? lwithoutD :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
          NumberAnimation{
              target:{flag0 ? base :textt}
              property: "opacity"
              from:1
              to:0
              duration: mainPage.transTime
          }
      }

    }

//---------------------------------carSignals-----------------------

    Timer{
        id:turnTimer
        interval: 500
        running: mainPage.turnRight || mainPage.turnLeft
        repeat: true
        onTriggered: flasher = !flasher
    }

    Image {
        id: rightSignal
        x:parent.width-parent.width/3
        y:parent.height/5
        width: parent.width/30
        visible:mainPage.turnRight && flasher
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/turn-signal_right.png"
    }
    Image {
        id: leftSignal
        x:parent.width/3.5
        y:parent.height/5
        width: parent.width/30
        visible: mainPage.turnLeft && flasher
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/turn-signal_left.png"
    }
    Image {
        id: beltAlarm
        x:500
        y:450
        width:seatBelt ?  parent.width/30 : parent.width/33
//        anchors{
//            bottom: Speed_Gauge.bottom
//            bottomMargin: 30
//            right: Speed_Gauge.right
//            rightMargin: 30
//        }

        opacity: mainPage.seatBelt ? 2 : 0.3
        fillMode: Image.PreserveAspectFit
        source: mainPage.seatBelt ? "qrc:/img/red_belt.png" :"qrc:/img/seat-belt-off.png"
    }
    Image {
        id: pressureAlarm
        anchors{
            bottom: beltAlarm.top
            bottomMargin: 20
            right: beltAlarm.right
            rightMargin: -45
        }

        width: parent.width/35
       // visible: tire1<26 || tire2<26 || tire3<26 || tire4<26
        fillMode: Image.PreserveAspectFit
      source: mainPage.tire1<26 || mainPage.tire2<26 || mainPage.tire3<26 || mainPage.tire4<26 ? "qrc:/img/tireP-obb.png":"qrc:/img/tireP-off.png"
    }


    Image {
        id: lightSignal
       anchors{
           bottom:pressureAlarm.top
           bottomMargin: 30
           right: pressureAlarm.right
           rightMargin: -25
       }
        width: parent.width/42

        fillMode: Image.PreserveAspectFit
        source: mainPage.lights ? "qrc:/img/car-lights-on.png" :"qrc:/img/car-lights-off.png"
    }
    Image {
        id: chargingstatee
        x:1325
        //y:450
        anchors.verticalCenter: beltAlarm.verticalCenter
        source: mainPage.chargingState? "qrc:/img/charging-on.png" : "qrc:/img/charging-off.png"
        scale: 0.5
    }
    Image {
        id: chargeAlarm
        anchors{
            verticalCenter:  pressureAlarm.verticalCenter
            left: chargingstatee.left
            leftMargin: -50
        }

        scale: 0.5
        visible: mainPage.socValue < 21
        fillMode: Image.PreserveAspectFit
        source:lowPower ? "qrc:/img/low-battery-on.png" :""
    }

}
