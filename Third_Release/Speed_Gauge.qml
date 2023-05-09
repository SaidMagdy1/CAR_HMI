import QtQuick 2.12
//import QtQuick.Window 2.12

Item
   {
    id:speed
    width: 1000
    height: 1000
    visible: true
    property int speedValue: 150
    property int heatValue:10
    property string smode: "reverse"
    property real heatend: 90
    property bool speedVisiblity: true

//    property real xArc : 1000/2      // this is to use it on Battery page *******
//    property real yArc: 1000/2

    FontLoader{
        id: aldotheapache
        source: "AldotheApache.ttf"
    }

    Image {
        id: background
        source: "qrc:/img/gauge_circle.png"
        anchors.centerIn: parent
        opacity: speedVisiblity ? 1 :0
        //scale: 0.7
    }
        Image {
            id: dash
            visible: speedVisiblity
            source: "img/gauge_dashs.png"
            anchors.centerIn: parent
            height: background.height+20
            width: height
        }
        Text {
            id:t1
            visible: speedVisiblity
            text: "40"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:160
            y:470
        }
        Text {
            id: t2
            visible: speedVisiblity
            text: "0"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:260
            y:710
        }
        Text {
            id: t3
            visible: speedVisiblity
            text: "80"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:250
            y:245
        }
        Text {
            id: t4
            visible: speedVisiblity
            text: "120"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:473
            y:140
        }
        Text {
            id: t5
            visible: speedVisiblity
            text: "160"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:700
            y:245
        }
        Text {
            id: t6
            visible: speedVisiblity
            text: "200"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:790
            y:470
        }
        Text {
            id: mode
            text: "p    n    d    r"
            font.family: aldotheapache.name
            font.pointSize: 35
            color: "#726e6d"
            y:570
            x:400//select()
            function select() {
                var d=0
                if(speed.smode=="parking") {
                d= 384
            } else if(speed.smode=="neutral") {
                d= 451
            }  else if(speed.smode=="driving") {
                   d= 518
            }  else if(speed.smode=="reverse") {
                    d= 585
            }
                return d
            }

        }
        Image {
            id: modeselection
            source: "img/mode_selector.png"
            x:mode.select()
            y:555
            Behavior on x{
                NumberAnimation{
                    duration: 500
                }

            }
        }


        Text {
            id: modeselected
            text: select()
            font.family: aldotheapache.name
            font.pointSize: 35
            color: "#05f228"
            anchors.centerIn: modeselection
            function select() {
                var d="n"
                if(speed.smode=="parking") {
                d= "p"
            } else if(speed.smode=="neutral") {
                d= "n"
            }  else if(speed.smode=="driving") {
                    d= "d"
            }  else if(speed.smode=="reverse") {
                    d= "r"
            }
                return d
            }
        }
        SGauge{
           id:sp
          //scale: parent.scale
          anchors.centerIn: parent
          start: 138
          end : (start-5+currentv*1.125)
          currentv: speed.speedValue
          height: (background.height)-106
          width: height
          linesize: 27
          name:speedVisiblity ? "km/h" :""
          primcol:  "#06c7f2"
          seccolor: "transparent"
          raduis: speedVisiblity ? width/2 -(linesize/2) : 200

//           xArc: speed.xArc
//           yArc: speed.yArc

          Text {
              id: gvalue
              text: speed.speedValue
              font.family: aldotheapache.name
              font.pointSize: 100
              color: "#06c7f2"
              anchors.horizontalCenter: sp.horizontalCenter
              y:280
          }

}


        SGauge{
            id: heat
            visible: speed.speedVisiblity
            currentv: speed.heatValue
            anchors.centerIn: parent
            start: 45
            end : heatend
            height: (dash.height)-315
            width: height
            linesize: 10
            primcol: "#f2916e"
            seccolor: "#f2916e"
            name: "  "


        }




    Image {
        id: carheat
        visible: speedVisiblity
        source: "img/car_temp.png"
        x:600
        y:830
        scale: 0.8

    }




}
