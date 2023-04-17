import QtQuick 2.15
import QtQuick.Controls 2.15
Item{
    id:carpage


    property int transTime: 500
    property int door: 0
    property int frontlight: 0
    property int backlight: 0


    property int tire1: 26
    property int tire2: 26
    property int tire3: 26
    property int tire4: 26


    property int flag1: 0
    property int flag2: 0
    property int flag3: 0
    property int flag0: 0
//    property string cstate: ""
    anchors.fill: parent


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
      Button{
          id:doors
          height: 50
          width: 50
          text: "DOOR"
          x:100
          y:50
          onClicked: carpage.door = !carpage.door

      }
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
          id:bLight
          height: 50
          width: 50
          text: "Blight"
          x:100
          y:170
          onClicked: backlight = !backlight

      }

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
          scale: 0.65
      }
      Image {
          id: doorwithL
          source: "qrc:/img/doorWithlight.png"
          x:280
          //anchors.horizontalCenter: base.horizontalCenter
          y:80
          opacity: 0
          scale: 0.69
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

  Speed_Gauge{
    scale: 0.25
    x:-330
    y:-180
    value1: 180
    smode: "driving"
  }

  Battery{
     scale : 0.25
      x:1550
      y:120
      socValue: 75
      sohValue: 75
      sotValue: 70
  }

//  Rectangle{
//      x:620
//      y:330
//      width: 30
//      height: 60
//      border.width: 5
//      border.color: "green"
//      radius: 20
//      color: "transparent"
//      opacity: 1
//  }
}
