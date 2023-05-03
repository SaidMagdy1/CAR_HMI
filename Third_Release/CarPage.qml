import QtQuick 2.15
import QtQuick.Controls 2.15
Item{
    id:carpage
    Image {
        id: carBG
        anchors.fill: parent
        source: "qrc:/img/blank.jpg"
    }

    property int transTime: 500
    property int door: 0
    property int frontlight: 0
    property int backlight: 0


    property int tire1: 25
    property int tire2: 26
    property int tire3: 26
    property int tire4: 26

    property int setPressure: 26            //normal tire pressure


    property int flag1: 0
    property int flag2: 0
    property int flag3: 0
    property int flag0: 0
//    property string cstate: ""
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
        if(backlight)
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
          width: tire2 < setPressure ? parent.width/38 :parent.width/33.6
          anchors{
              top: tireRect2.bottom
              topMargin: tire2 < setPressure ? 5 : 3
              right: tireRect2.right
              rightMargin:tire2 < setPressure ? -15 : -20
          }
          rotation: -5
          opacity:1
          source:  tire2 < setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
          fillMode:Image.PreserveAspectFit

       }

      Image {
          id: outerTire3
          width: tire3 < setPressure ? parent.width/38 :parent.width/33.6
          anchors{
              top: tireRect3.bottom
              topMargin: tire3 < setPressure ? 5 : 3
              right: tireRect3.right
              rightMargin:tire3 < setPressure ? -15 : -20
          }
          rotation: -5
          opacity:1
          source:  tire3 < setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
          fillMode:Image.PreserveAspectFit

       }

      Image {
          id: outerTire4
          width: tire4 < setPressure ? parent.width/39 :parent.width/38
          height: tire4 < setPressure ? parent.width/26 :parent.width/30
          anchors{
              bottom: tireRect4.bottom
              bottomMargin: tire4 < setPressure ? -30 : -28
              right: tireRect4.left
              rightMargin:0
          }
          rotation: 170
          opacity:1
          source:  tire4 < setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
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
          opacity: !backlight
          scale: 0.6
      }
      Image {
          id: backwithlight
          source: "qrc:/img/BackWithLight.png"
          x:1025
          y:150

         // anchors.centerIn: parent
          //anchors.verticalCenter:  base.verticalCenter
          opacity: backlight
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
     //   }
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

  ParallelAnimation{
      id:backoff
     NumberAnimation{
         target: back
         property: "opacity"
         from:0
         to:1
         duration: transTime
        }


      NumberAnimation{
           target:backwithlight
           property: "opacity"
           from:1
           to:0
           duration: transTime
        }
    }
  ParallelAnimation{
      id:backon
     NumberAnimation{
         target: back
         property: "opacity"
         from:1
         to:0
         duration: transTime
        }


      NumberAnimation{
           target:backwithlight
           property: "opacity"
           from:0
           to:1
           duration: transTime
        }
    }

  Rectangle{
      width:350
      height: 350
     // color: "#021240"
      gradient: Gradient {
               GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
               GradientStop { position: 0.0; color: "blue" }
           }
      radius: 200
      anchors.centerIn: naviGear
  }
  Rectangle{

      width:350
      height: 350
     // color: "#021240"
      gradient: Gradient {
               GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
               GradientStop { position: 0.0; color: "blue" }
           }
      radius: 200
      anchors{
          top: naviBattery.top
          topMargin: 70
          left: naviBattery.left
          leftMargin: 70
      }
  }


  Speed_Gauge{
      id:naviGear
      scale: 0.35
      x:-330
      y:-70
      value1: 180
      smode: "driving"
   }

  BatteryGauge{

      id:naviBattery
     scale : 0.35
      x:1500
      y:185
      socValue: 75
      sohValue: 75
      sotValue: 70
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
      width: tire1 < setPressure ? parent.width/39 :parent.width/34
      height: tire1 < setPressure ? parent.width/26 :parent.width/28
      anchors{
          bottom: tireRect1.bottom
          bottomMargin: tire1 < setPressure ? -30 : -28
          right: tireRect1.left
          rightMargin:10
      }
      rotation: -10
      opacity:1
      source:  tire1 < setPressure ? "qrc:/img/redTire.png" :"qrc:/img/greenTire.png"
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
      color:  tire1 < setPressure ? "red" :"green"
      text: tire1+" bar"
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
      color:  tire2 < setPressure ? "red" :"green"
      text: tire2+" bar"
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
      color:  tire3 < setPressure ? "red" :"green"
      text: tire3+" bar"
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
      color:  tire4 < setPressure ? "red" :"green"
      text: tire4+" bar"
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

}
