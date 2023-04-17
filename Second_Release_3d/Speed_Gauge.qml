import QtQuick 2.12
//import QtQuick.Window 2.12

Item
   {
    id:speed
    width: 1000
    height: 1000
    visible: true
    property real value1: sp.currentv
    property string smode: "neutral"
    property real heatend: 90

    FontLoader{
        id: aldotheapache
        source: "AldotheApache.ttf"
    }

    Image {
        id: background
        source: "qrc:/gauge_circle.png"
        anchors.centerIn: parent
        //scale: 0.7
        Image {
            id: dash
            source: "img/gauge_dashs.png"
            anchors.centerIn: parent
            height: background.height+20
            width: height
        }
        Text {
            id:t1
            text: "40"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:160
            y:470
        }
        Text {
            id: t2
            text: "0"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:260
            y:710
        }
        Text {
            id: t3
            text: "80"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:250
            y:245
        }
        Text {
            id: t4
            text: "120"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:473
            y:140
        }
        Text {
            id: t5
            text: "160"
            font.family:aldotheapache.name
            font.pointSize: 24
            color: "#ffffff"
            x:700
            y:245
        }
        Text {
            id: t6
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
            x: select()
            function select() {
                var d=0
                if(smode=="parking") {
                d= 485
            } else if(smode=="neutral") {
                d= 418
            }  else if(smode=="driving") {
                    d= 351
            }  else if(smode=="reverse") {
                    d= 284
            }
                return d
            }
        }

        Image {
            id: modeselection
            source: "img/mode_selector.png"
            x:470
            y:555
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
                if(smode=="parking") {
                d= "p"
            } else if(smode=="neutral") {
                d= "n"
            }  else if(smode=="driving") {
                    d= "d"
            }  else if(smode=="reverse") {
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
          currentv: speed.value1
          height: (background.height)-106
          width: height
          linesize: 27
          name: "km/h"
          primcol:  "#06c7f2"
          seccolor: "transparent"
          Text {
              id: gvalue
              text: value1
              font.family: aldotheapache.name
              font.pointSize: 100
              color: "#06c7f2"
              anchors.horizontalCenter: sp.horizontalCenter
              y:250
          }

}


        SGauge{
            id: heat
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


    }

    Image {
        id: carheat
        source: "img/car_temp.png"
        x:600
        y:830
        scale: 0.8

    }




}
