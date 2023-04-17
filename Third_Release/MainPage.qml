import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Item{
    id:mainPage
    property bool turnRight: false    //should be adjusted to Defualt 0 ->false
    property bool turnLeft: false
    property bool seatBelt: false
    property bool pressureAlarm: true
    property bool lowPower: false
    property bool flasher: false


    property int transTime: 500
    property int door: 0
    property int frontlight: 0

    property int tire1: 25
    property int tire2: 26
    property int tire3: 26
    property int tire4: 26

    property int flag1: 0
    property int flag2: 0
    property int flag3: 0
    property int flag0: 0


    property bool smallPage: true

    //------to_Adjust_Car2D_In_Different_Sizes----------
    property int xErorr: 350
    property int yErorr: 50

    FontLoader { id:aldo ; source: "AldotheApache.ttf" }
    //-----------------buttons_for_test--------------
     RowLayout{
         id:lay1
         spacing: 2
         Button{
             width: 20
             height: 20
             text: "P"
             onClicked: smallPage =!smallPage
         }
         Button{
             width:10
             height: 20
             text: "<"
             onClicked: turnLeft =!turnLeft
         }
         Button{
             width: 20
             height: 20
             text: ">"
             onClicked: turnRight =!turnRight
         }

         Button{
             width: 10
             height: 20
             text: "belt"
             onClicked: seatBelt =!seatBelt
         }
         Button{
             width: 20
             height: 20
             text: "charge"
             onClicked: lowPower =!lowPower
         }
     }

    //-------------------------------------

    anchors.fill:parent
    Battery{
       // width : 220
        //height: 220
       scale : 0.45
        x:1270
        y:0
        socValue: 75
        sohValue: 75
        sotValue: 70
    }
    Speed_Gauge{
      scale: 0.45
      x:-150
      y:-215
      value1: 180
      smode: "driving"
    }
    Footer{
        id : footer
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
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
        visible: !smallPage
//-------------------------------Tire1----------------
        Rectangle{
            id:fRightTire
            x:160
            y:120
            width: 25
            height: 40
            radius: 10
            opacity: 1
            color: tire1 < 26 ? "red" :"green"
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
            source:  tire1 < 26 ? "qrc:/img/red_arrow.png" :"qrc:/img/green_arrow.png"
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
            color:  tire1 < 26 ? "red" :"green"
            text: tire1+" bar"
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
            color: tire2 < 26 ? "red" :"green"
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
            source:  tire2 < 26 ? "qrc:/img/red_arrow180.png" :"qrc:/img/green_arrow180.png"
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
            color:  tire2 < 26 ? "red" :"green"
            text: tire2+" bar"
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
            color: tire3 < 26 ? "red" :"green"
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
            source:  tire2 < 26 ? "qrc:/img/red_arrow.png" :"qrc:/img/green_arrow.png"
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
            color:  tire3 < 26 ? "red" :"green"
            text: tire3+" bar"
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
            color: tire4 < 26 ? "red" :"green"
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
            source:  tire4 < 26 ? "qrc:/img/red_arrow180.png" :"qrc:/img/green_arrow180.png"
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
            color:  tire4 < 26 ? "red" :"green"
            text: tire2+" bar"
        }
        Image {
            id: carElevation
            x:30
            scale: 0.8
            opacity:.4
            source: "qrc:/img/Elevation.png"
            fillMode:Image.PreserveAspectFit

        }

    }





//---------------------------------carInMainPageBody-----------------------
    Rectangle{
        id:carItem

        visible: smallPage
       anchors.fill: parent
       color:"transparent"





          Button{
              id:fLight
              height: 50
              width: 50
              text: "Flight"
              x:100
              y:110
              onClicked: frontlight = !frontlight

            }
          Button{
              id:doors
              height: 50
              width: 50
              text: "DOOR"
              x:100
              y:50
              onClicked: door = !door

          }

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
                duration: transTime
            }



           NumberAnimation{
               target:{flag2 ? lwithoutD : textt}
               property: "opacity"
               from:1
               to:0
               duration: transTime
                }

           NumberAnimation{
               target:{flag3 ? doorwithL : textt}
               property: "opacity"
               from:1
               to:0
               duration: transTime
                }
            }

      ParallelAnimation{
          id:first
          NumberAnimation{
              target: doorwithoutL
              property: "opacity"
              from:0
              to:1
              duration: transTime
          }

          NumberAnimation{
              target:{flag3 ? doorwithL :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
          NumberAnimation{
              target:{flag2 ? lwithoutD :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
          NumberAnimation{
              target:{flag0 ? base :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }

      }
      ParallelAnimation{
          id:second
          NumberAnimation{
              target:lwithoutD
              property: "opacity"
              from:0
              to:1
              duration: transTime
          }
          NumberAnimation{
              target:{flag1 ? doorwithoutL :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
          NumberAnimation{
              target:{flag3? doorwithL :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
          NumberAnimation{
              target:{flag0 ? base :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
      }
      ParallelAnimation{
          id:third
          NumberAnimation{
              target: doorwithL
              property: "opacity"
              from:0
              to:1
              duration: transTime
          }
          NumberAnimation{
              target:{flag1 ? doorwithoutL :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
          NumberAnimation{
              target:{flag2 ? lwithoutD :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
          NumberAnimation{
              target:{flag0 ? base :textt}
              property: "opacity"
              from:1
              to:0
              duration: transTime
          }
      }

    }

//---------------------------------carSignals-----------------------

    Timer{
        id:turnTimer
        interval: 500
        running: turnRight || turnLeft
        repeat: true
        onTriggered: flasher = !flasher
    }

    Image {
        id: rightSignal
        x:parent.width-parent.width/3
        y:parent.height/5
        width: parent.width/30
        visible:turnRight && flasher
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/turn-signal_right.png"
    }
    Image {
        id: leftSignal
        x:parent.width/3.5
        y:parent.height/5
        width: parent.width/30
        visible: turnLeft && flasher
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/turn-signal_left.png"
    }
    Image {
        id: beltAlarm
        x:parent.width-parent.width/3+20
        y:parent.height-parent.height/5
        width: parent.width/30
        visible: seatBelt
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/yellow_belt.png"
    }
    Image {
        id: pressureAlarm
        anchors{
            bottom: beltAlarm.top
            right: beltAlarm.left
            rightMargin: -10
        }

        width: parent.width/35
        visible: tire1<26 || tire2<26 || tire3<26 || tire4<26
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/tire.png"
    }

    Image {
        id: chargeAlarm
        anchors{
            bottom: pressureAlarm.top
            bottomMargin: 30
            right: beltAlarm.left
            rightMargin: 20
        }

        width: parent.width/40
        visible: lowPower
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/electric-car.png"
    }

}
