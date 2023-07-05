import QtQuick 2.15
import QtQuick.Controls 2.15
Item{
    id:carpage
//    Image {
//        id: carBG
//        anchors.fill: parent
//        source: "qrc:/img/blank.jpg"
//    }


    property bool turnRight:mainWindow.turnRight  //should be adjusted to Defualt 0 ->false
    property bool turnLeft:mainWindow.turnLeft
    property bool seatBelt:mainWindow.seatBelt
    property bool lights: mainWindow.lights
    property bool chargingState :mainWindow.chargingState
    property bool door: mainWindow.door
    property bool frontlight:mainWindow.frontlight
    property bool backlight:mainWindow.backlight

    property int transTime: mainWindow.transTime
    property int speedValue: mainWindow.speedValue
    property int heatValue: mainWindow.heatValue
    property int socValue: mainWindow.socValue     // from 0 to 100
    property int sohValue: mainWindow.sohValue     // from 0 to 100
    property int sotValue: mainWindow.sotValue    // from 0 to 100

    property int tire1: mainWindow.tire1
    property int tire2: mainWindow.tire2
    property int tire3: mainWindow.tire3
    property int tire4: mainWindow.tire4
    property int setPressure: mainWindow.setPressure

    property int flag1: 0
    property int flag2: 0
    property int flag3: 0
    property int flag0: 0

    property string smode: mainWindow.smode

    anchors.fill: parent

    FontLoader { id:aldo ; source: "AldotheApache.ttf" }

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


    onBacklightChanged: {
        if(carpage.backlight)
            backon.start();
        else
            backoff.start();
    }
//      Button{
//          id:doors
//          height: 50
//          width: 50
//          text: "DOOR"
//          x:100
//          y:50
//          onClicked: carpage.door = !carpage.door

//      }
//      Button{
//          id:fLight
//          height: 50
//          width: 50
//          text: "Flight"
//          x:100
//          y:110
//          onClicked: frontlight = !frontlight

//        }
//      Button{
//          id:bLight
//          height: 50
//          width: 50
//          text: "Blight"
//          x:100
//          y:170
//          onClicked: backlight = !backlight

//      }

      Text {
          id: textt
          color: "transparent"
          text: qsTr("text")
      }

//      Timer{
//          id: navigtionLoop
//                  interval: 3000
//                  repeat: true
//                  running: true
//                  triggeredOnStart: true
//                  onTriggered: {
//                      if(door & !frontlight){
//                         first.start();
//                           flag1 = 1;
//                        }
//                      else if(!door & frontlight){
//                              second.start();
//                              flag2=1; }
//                      else if(door & frontlight){
//                             third.start();
//                             flag3=1;}
//                      else{
//                             zero.start();
//                             flag0=1}
//                    }
//        }

      Image {
          id: outerTire2
          width: carpage.tire2 < carpage.setPressure ? parent.width/38 :parent.width/33.6
          anchors{
              top: tireRect2.bottom
              topMargin: carpage.tire2 < carpage.setPressure ? 5 : 3
              right: tireRect2.right
              rightMargin:carpage.tire2 < carpage.setPressure ? -15 : -20
          }
          rotation: -5
          opacity:1
          source:  carpage.tire2 < carpage.setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
          fillMode:Image.PreserveAspectFit

       }

      Image {
          id: outerTire3
          width: carpage.tire3 < carpage.setPressure ? parent.width/38 :parent.width/33.6
          anchors{
              top: tireRect3.bottom
              topMargin: carpage.tire3 < carpage.setPressure ? 5 : 3
              right: tireRect3.right
              rightMargin:carpage.tire3 < carpage.setPressure ? -15 : -20
          }
          rotation: -5
          opacity:1
          source:  carpage.tire3 < carpage.setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
          fillMode:Image.PreserveAspectFit

       }

      Image {
          id: outerTire4
          width: carpage.tire4 < carpage.setPressure ? parent.width/39 :parent.width/38
          height: carpage.tire4 < carpage.setPressure ? parent.width/26 :parent.width/30
          anchors{
              bottom: tireRect4.bottom
              bottomMargin: carpage.tire4 < carpage.setPressure ? -30 : -28
              right: tireRect4.left
              rightMargin:0
          }
          rotation: 170
          opacity:1
          source:  carpage.tire4 < carpage.setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
         // fillMode:Image.PreserveAspectFit

       }

      Image {
          id: base
          source: "qrc:/img/Base1.png"
          x:295
          anchors.verticalCenter:  parent.verticalCenter

          opacity: 1
          scale: 0.6
      }
      Image {
          id: back
          source: "qrc:/img/Back1.png"
          x:1030
          y:150

         // anchors.centerIn: parent
          //anchors.verticalCenter:  base.verticalCenter
          opacity: !carpage.backlight
          scale: 0.6
      }
      Image {
          id: backwithlight
          source: "qrc:/img/BackWithLight.png"
          x:1025
          y:150

         // anchors.centerIn: parent
          //anchors.verticalCenter:  base.verticalCenter
          opacity: carpage.backlight
          scale: 0.6
      }
      Image {
          id: doorwithoutL
          source: "qrc:/img/mainDoor.png"
          x:290
          //anchors.horizontalCenter: base.horizontalCenter
          y:74
          opacity: 0
          scale: 0.63

      }
      Image {
          id: doorwithL
          source: "qrc:/img/doorWithlight.png"
          x:285
          //anchors.horizontalCenter: base.horizontalCenter
          y:80
          opacity: 0
          scale: 0.66

      }
        Image {
            id: lwithoutD
            source: "qrc:/img/LighWithotDoor.png"
            x:315
            //anchors.horizontalCenter: base.horizontalCenter
            y:75
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
           duration: carpage.transTime
            }


                    NumberAnimation{
                     target:{flag1 ? doorwithoutL : textt}
                     property: "opacity"
                      from:1
                      to:0
                     duration: carpage.transTime
                     }



       NumberAnimation{
           target:{flag2 ? lwithoutD : textt}
           property: "opacity"
           from:1
           to:0
           duration: carpage.transTime
            }

       NumberAnimation{
           target:{flag3 ? doorwithL : textt}
           property: "opacity"
           from:1
           to:0
           duration: carpage.transTime
            }
        }
     //   }
  ParallelAnimation{
      id:first
      NumberAnimation{
          target: doorwithoutL
          property: "opacity"
          from:0
          to:1
          duration: carpage.transTime
      }

      NumberAnimation{
          target:{flag3 ? doorwithL :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag2 ? lwithoutD :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag0 ? base :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }

  }
  ParallelAnimation{
      id:second
      NumberAnimation{
          target:lwithoutD
          property: "opacity"
          from:0
          to:1
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag1 ? doorwithoutL :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag3? doorwithL :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag0 ? base :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
  }
  ParallelAnimation{
      id:third
      NumberAnimation{
          target: doorwithL
          property: "opacity"
          from:0
          to:1
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag1 ? doorwithoutL :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag2 ? lwithoutD :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
      NumberAnimation{
          target:{flag0 ? base :textt}
          property: "opacity"
          from:1
          to:0
          duration: carpage.transTime
      }
  }

  ParallelAnimation{
      id:backoff
     NumberAnimation{
         target: back
         property: "opacity"
         from:0
         to:1
         duration: carpage.transTime
        }


      NumberAnimation{
           target:backwithlight
           property: "opacity"
           from:1
           to:0
           duration: carpage.transTime
        }
    }
  ParallelAnimation{
      id:backon
     NumberAnimation{
         target: back
         property: "opacity"
         from:1
         to:0
         duration: carpage.transTime
        }


      NumberAnimation{
           target:backwithlight
           property: "opacity"
           from:0
           to:1
           duration: carpage.transTime
        }
    }



  Speed_Gauge{
      id:naviGear
      scale: 0.25
      x:-300
      y:-205
      speedValue: carpage.speedValue
      smode: carpage.smode
   }

  BatteryGauge{

      id:naviBattery
     scale : 0.25
      x:1520
      y:90
      socValue: carpage.socValue
      sohValue: carpage.sohValue
      sotValue: carpage.sotValue
   }

  Rectangle{
      id:tireRect1
//      x:610
//      y:340
      anchors{
          bottom: base.bottom
          bottomMargin: 160
          left: base.right
          leftMargin: -150
      }

      width:75
      height: 50
      border.width: 3
      border.color:  "lightBlue"       //tire1 < setPressure ? "red" :"green"
      radius:20
      color: "transparent"
   }
  Image {
      id: outerTire1
      width: carpage.tire1 < carpage.setPressure ? parent.width/39 :parent.width/34
      height: carpage.tire1 < carpage.setPressure ? parent.width/26 :parent.width/28
      anchors{
          bottom: tireRect1.bottom
          bottomMargin: carpage.tire1 < carpage.setPressure ? -30 : -28
          right: tireRect1.left
          rightMargin:10
      }
      rotation: -10
      opacity:1
      source:  carpage.tire1 < carpage.setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
     // fillMode:Image.PreserveAspectFit

   }

  Text {
      id: pressure1
      anchors{
         top: tireRect1.top
         topMargin: 5
         horizontalCenter: tireRect1.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize: 16
      font.bold: true
      color:  carpage.tire1 < carpage.setPressure ? "red" :"green"
      text: carpage.tire1+" bar"
  }
  Text {
      id: temTire1
      anchors{
         top: pressure1.bottom
         //topMargin: 5
         horizontalCenter: tireRect1.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize: 16
      font.bold: true
      color: "white"   //tire1 < setPressure ? "red" :"green"
      text: " 71 C°"
  }


  Rectangle{
      id:tireRect2
//      x:610
//      y:340
      anchors{
          bottom: base.bottom
          bottomMargin: 230
          right: base.left
          rightMargin: -150
      }

      width:75
      height: 50
      border.width: 3
      border.color:  "lightBlue"       //tire1 < setPressure ? "red" :"green"
      radius:20
      color: "transparent"
   }


  Text {
      id: pressure2
     // anchors.centerIn: tireRect2
      anchors{
         top: tireRect2.top
         topMargin: 5
         horizontalCenter: tireRect2.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize:16
      color:  carpage.tire2 < carpage.setPressure ? "red" :"green"
      text: carpage.tire2+" bar"
  }
  Text {
      id: temTire2
      anchors{
         top: pressure2.bottom
         //topMargin: 5
         horizontalCenter: tireRect2.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize: 16
      font.bold: true
      color: "white"   //tire1 < setPressure ? "red" :"green"
      text: " 70 C°"
  }


  Rectangle{
      id:tireRect3
//      x:610
//      y:340
      anchors{
          bottom: back.bottom
          bottomMargin: 200
          right: back.left
          rightMargin: -100
      }

      width:75
      height: 50
      border.width: 3
      border.color:  "lightBlue"       //tire1 < setPressure ? "red" :"green"
      radius:20
      color: "transparent"
   }


  Text {
      id: pressure3
      anchors{
         top: tireRect3.top
         topMargin: 5
         horizontalCenter: tireRect3.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize: 16
      font.bold: true
      color:  carpage.tire3 < carpage.setPressure ? "red" :"green"
      text: carpage.tire3+" bar"
  }
  Text {
      id: temTire3
      anchors{
         top: pressure3.bottom
         //topMargin: 5
         horizontalCenter: tireRect3.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize: 16
      font.bold: true
      color: "white"   //tire1 < setPressure ? "red" :"green"
      text: " 73 C°"
  }

  Rectangle{
      id:tireRect4
//      x:610
//      y:340
      anchors{
          bottom: back.bottom
          bottomMargin: 140
          left: back.right
          leftMargin: -60
        }

      width:75
      height: 50
      border.width: 3
      border.color:  "lightBlue"       //tire1 < setPressure ? "red" :"green"
      radius:20
      color: "transparent"
   }


  Text {
      id: pressure4
     // anchors.centerIn: tireRect2
      anchors{
         top: tireRect4.top
         topMargin: 5
         horizontalCenter: tireRect4.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize:16
      color:  carpage.tire4 < carpage.setPressure ? "red" :"green"
      text: carpage.tire4+" bar"
  }
  Text {
      id: temTire4
      anchors{
         top: pressure4.bottom
         //topMargin: 5
         horizontalCenter: tireRect4.horizontalCenter
      }
      opacity: 0.9
      font.family:aldo.name
      font.pixelSize: 16
      font.bold: true
      color: "white"   //tire1 < setPressure ? "red" :"green"
      text: " 71 C°"
  }

  //----------------signals-------------
  Image {
      id: beltAlarm
     anchors{
         bottom: parent.bottom
         bottomMargin: 40
         right: parent.right
         rightMargin:300
     }
      width: parent.width/38

      fillMode: Image.PreserveAspectFit
      source: carpage.seatBelt ? "qrc:/img/seat-belt-on.png" :"qrc:/img/seat-belt-off.png"
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
      source: carpage.lights ? "qrc:/img/car-lights-on.png" :"qrc:/img/car-lights-off.png"
  }
  Image {
      id: batteryLow
      x:270
      visible: carpage.socValue < 26
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
      source: carpage.chargingState ? "qrc:/img/charging-on.png": "qrc:/img/charging-off.png"
  }




  DaignosticBuffer{
      id:daignostic
      x:150 ;y:20

  }
}
