import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Qt.labs.qmlmodels 1.0

Item {
id: dbPage
x:200
property bool k1: f1? true : false
property bool k2: f2? true : false
property bool k4: f4? true : false
property bool k5: f5? true : false
property bool k6: f6? true : false
property bool k7: f7? true : false
property bool k8: f8? true : false
property int g1: 0
property int g2: 0
property int g3: 0
property int c: 0
property int f1: batterycharge<10? 1:0
property int f2: 30<batterytemp<15? 0:1
property int f3: 0
property int f4: generalfault? 1:0
property int f5: electricalfault? 1:0
property int f6: limitedpower? 1:0
property int f7: settingsfault? 1:0
property int f8: nupdate? true:false
property int flags: f4+f5+f6+f7
property int battnum: f1+f2
property bool settingsfault: false
property bool nupdate: false
property bool notifiactionSE: false
property bool notifiactionB: false
//property bool notifiactionSP: false
property bool generalfault: false
property bool limitedpower: false
property int batterytemp: 25
property int batterycharge: 50
property bool electricalfault: false

 FontLoader { id:aldo ; source: "AldotheApache.ttf" }
// Image {
//     id: info
//     source: "qrc:/img/info.png"
//     x:(parent.width/2)-(info.width/2)
//     y:50
// }
 //---------test buttons ---------
 Button{
     x:-80
     y:30
     height: 50
     width: 50
     text: "btch"
MouseArea{
    anchors.fill: parent
    onClicked: {
        f1=1
    }
 }
 }
 Button{
     x:-80
     y:80
     height: 50
     width: 50
     text: "bttemp"
MouseArea{
    anchors.fill: parent
    onClicked: {
        f2=1
    }
 }
 }
 Button{
     x:-80
     y:130
     height: 50
     width: 50
     text: "gf"
MouseArea{
    anchors.fill: parent
    onClicked: {
        f4=1
    }
 }
 }
 Button{
     x:-80
     y:180
     height: 50
     width: 50
     text: "ef"
MouseArea{
    anchors.fill: parent
    onClicked: {
        f5=1
    }
 }
 }
 Button{
     x:-80
     y:230
     height: 50
     width: 50
     text: "lp"
MouseArea{
    anchors.fill: parent
    onClicked: {
        f6=1
    }
 }
 }
 Button{
     x:-80
     y:280
     height: 50
     width: 50
     text: "sett"
MouseArea{
    anchors.fill: parent
    onClicked: {
        f7=1
    }
 }
 }
 Button{
     x:-80
     y:310
     height: 50
     width: 50
     text: "up"
MouseArea{
    anchors.fill: parent
    onClicked: {
        f8=1
    }
 }
 }


//onF1Changed: {
//    if(f1==1){
//        if(c==1){
//            battmoredetails1.opacity=1
//        battmoredetails1.text="the battery charge percentage is lower than 10% .
//please recharge your battery"
//            battmoredetails2.opacity=0
//            battmoredetails2.text="Your battery temperature is lower than the allowed
//   efficient limit and this will affect on your car performance!
//   PLEASE check the nearest dealer to fix the problem"
//        } else if(c==2){
//             battmoredetails2.opacity=1
//            battmoredetails2.text="the battery charge percentage is lower than 10% .
//    please recharge your battery"
//                battmoredetails1.opacity=0
//                battmoredetails1.text="Your battery temperature is lower than the allowed
//       efficient limit and this will affect on your car performance!
//       PLEASE check the nearest dealer to fix the problem"
//        }

//    }
//}


//--------------------------date&time detection------------------------ //

 //--------battery faults--------------
 Timer
 {
     id : timer1
     interval: 1000 // 1 second
     running: k1
     repeat: false
     onTriggered:
     { if(battnum==1){
         batttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
         battdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM")
         batteventDet.text="the battery charge percentage is lower than"
         battNoDet.text="1"
         battdot.opacity=1
        background1.height=50
             c=1
         } else if(battnum==2){
             batttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             battdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM")
             batteventDet1.text="the battery charge percentage is lower than"
             battNoDet1.text="2"
             battdot.opacity=1
              background1.height=80
             c=2
         }
     }
 }
 Timer
 {
     id : timer2
     interval: 1000 // 1 second
     running: k2
     repeat: false
     onTriggered:
     { if(battnum==1){
         batttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
         battdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM")
         batteventDet.text="there is a problem in the battery temperatur"
         battNoDet.text="1"
             battdot.opacity=1
              background1.height=50
         } else if(battnum==2){
             batttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             battdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM")
             batteventDet1.text="there is a problem in the battery temperatur"
             battNoDet1.text="2"
             battdot.opacity=1
              background1.height=80
         }
     }
 }
 //-----------settings faults-----------
 Timer
 {
     id : timer4
     interval: 1000 // 1 second
     running: k4
     repeat: false
     onTriggered:
     { if(flags==1){
         setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
         settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM")
         setteventDet.text="there is a genral fault has occured"
         settNoDet.text="1"
         setdot.opacity=1
         background.height=50
         } else if(flags==2){
             setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet1.text="there is a genral fault has occured"
             settNoDet1.text="2"
             setdot.opacity=1
             background.height=80
         }else if(flags==3){
             setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet2.text="there is a genral fault has occured"
             settNoDet2.text="3"
             setdot.opacity=1
             background.height=100
         } else if(flags==4){
             setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet3.text="there is a genral fault has occured"
             settNoDet3.text="4"
             setdot.opacity=1
             background.height=130
         }
     }
 }
 Timer
 {
     id : timer5
     interval: 1000 // 1 second
     running: k5
     repeat: false
     onTriggered:
     { if(flags==1){
         setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
         settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM")
         setteventDet.text="there's an electrical fault in your system"
         settNoDet.text="1"
         setdot.opacity=1
         background.height=50
         } else if(flags==2){
             setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet1.text="there's an electrical fault in your system"
             settNoDet1.text="2"
             setdot.opacity=1
             background.height=80
         }else if(flags==3){
             setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet2.text="there's an electrical fault in your system"
             settNoDet2.text="3"
             setdot.opacity=1
             background.height=100
         } else if(flags==4){
             setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet3.text="there's an electrical fault in your system"
             settNoDet3.text="4"
             setdot.opacity=1
             background.height=130
         }
     }
 }
 Timer
 {
     id : timer6
     interval: 1000 // 1 second
     running: k6
     repeat: false
     onTriggered:
     { if(flags==1){
         setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
         settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM")
         setteventDet.text="the car is getting into limited power mode"
         settNoDet.text="1"
         setdot.opacity=1
         background.height=50
         } else if(flags==2){
             setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet1.text="the car is getting into limited power mode"
             settNoDet1.text="2"
             setdot.opacity=1
             background.height=80
         }else if(flags==3){
             setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet2.text="the car is getting into limited power mode"
             settNoDet2.text="3"
             setdot.opacity=1
             background.height=100
         } else if(flags==4){
             setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet3.text="the car is getting into limited power mode"
             settNoDet3.text="4"
             setdot.opacity=1
             background.height=130
         }
     }
 }
 Timer
 {
     id : timer7
     interval: 1000 // 1 second
     running: k7
     repeat: false
     onTriggered:
     { if(flags==1){
         setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
         settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM")
         setteventDet.text="there is a problem has occured in settings"
         settNoDet.text="1"
         setdot.opacity=1
         background.height=50
         } else if(flags==2){
             setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet1.text="there is a problem has occured in settings"
             settNoDet1.text="2"
             setdot.opacity=1
             background.height=80
         }else if(flags==3){
             setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet2.text="there is a problem has occured in settings"
             settNoDet2.text="3"
             setdot.opacity=1
             background.height=100
         } else if(flags==4){
             setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
             settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM")
             setteventDet3.text="there is a problem has occured in settings"
             settNoDet3.text="4"
             setdot.opacity=1
             background.height=130
         }
     }
 }
 //----------update notification-------------
 Timer
 {
     id : timer8
     interval: 1000 // 1 second
     running: k8
     repeat: false
     onTriggered:
     { if(f8==1){
         uptimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
         updateDet.text = Qt.formatDateTime(new Date(), "dd MMMM")
         upeventDet.text="a new update is available for your system"
         upNoDet.text="1"
         updatedot.opacity=1
         background2.height=50

     }
 }
 }
 //---------------------------------------------------------------------------//

 //------------selection table layout----------------
 Text {
     id: info
     text: qsTr("fault information")
     font.family: aldo.name
     font.pixelSize: 20
     color: "white"
     //x:(parent.width/2)-(info.width/2)
     y:50
     MouseArea{
         id:infoo
         anchors.fill: parent
         onClicked: {
             infodetails.start();
             right1.source="qrc:/img/arrow-down-sign-to-navigate.png"
         }
     }
 }
 Rectangle{
     id:selection
     color: "#06c7f2"
     width:480
     height: 23
     opacity: 0.5
    // x:300
     y:-1000
 }


 Text {
     id: sett
     text: qsTr("settings")
     font.family: aldo.name
     font.pixelSize: 20
     color: "white"
     anchors{
         left: selection.left
         leftMargin: 20
         verticalCenter: selection.verticalCenter
     }
     MouseArea{
         id:select
         anchors.fill: parent
         onClicked: {
             g1=1
             settdetails.start();
             if(g2==1){
             battdetails1.start();
             } else if(g3==1){
             upddetails1.start();
             }
             g2=0
             g3=0
             right2.source="qrc:/img/arrow-down-sign-to-navigate.png"
             pagesup.opacity=0.5
             right3.source="qrc:/img/next.png"
             right4.source="qrc:/img/next.png"
             setdot.opacity=0
         }
     }
 }
 Image {
     id: right2
     source: "qrc:/img/next.png"
     scale: 0.2
     anchors{
         left: selection.left
         leftMargin: -20
         verticalCenter: selection.verticalCenter
     }
 }
 Text {
     id: batt
     text: qsTr("battery")
     font.family: aldo.name
     font.pixelSize: 20
     color: "white"
     anchors{
        horizontalCenter: selection.horizontalCenter
         verticalCenter: selection.verticalCenter
     }
     MouseArea{
         id:selectt
         anchors.fill: parent
         onClicked: {
             g2=1
             battdetails.start();
             if(g1==1){
             settdetails1.start();
             } else if(g3==1){
             upddetails1.start();
             }
             g3==0
             g1==0
             right3.source="qrc:/img/arrow-down-sign-to-navigate.png"
             pagesup1.opacity=0.5
             right2.source="qrc:/img/next.png"
             right4.source="qrc:/img/next.png"
             battdot.opacity=0
           }
     }
 }
 Image {
     id: right3
     source: "qrc:/img/next.png"
     scale: 0.2
     anchors{
         left: batt.left
         leftMargin: -42
         verticalCenter: selection.verticalCenter
     }
 }
 Text {
     id: updates
     text: qsTr("updates")
     font.family: aldo.name
     font.pixelSize: 20
     color: "white"
     anchors{
        right: selection.right
        rightMargin: 11
        verticalCenter: selection.verticalCenter
     }
     MouseArea{
         id:selecttt
         anchors.fill: parent
         onClicked: {
             g3=1
             upddetails.start();
             if(g2==1){
             battdetails1.start();
             } else if(g1==1){
             settdetails1.start();
             }
             g2=0
             g1=0
             right4.source="qrc:/img/arrow-down-sign.png"
             pagesup2.opacity=0.5
             right3.source="qrc:/img/next.png"
             right2.source="qrc:/img/next.png"
             updatedot.opacity=0
         }
     }
 }
 Image {
     id: right4
     source: "qrc:/img/next.png"
     scale: 0.2
     anchors{
         left: updates.left
         leftMargin: -42
         verticalCenter: selection.verticalCenter
     }
 }
 Image {
     id: right1
     source: "qrc:/img/next.png"
     scale: 0.2
     anchors{
         left: info.left
         leftMargin: -42
         verticalCenter: info.verticalCenter
     }
 }
 Image {
     id: pagesup
     source: "qrc:/img/double-up-arrow.png"
     scale: 0.2
     opacity: 0
     anchors{
         top: background.bottom
         topMargin: -5
         right: background.right
         rightMargin: -20
     }
     MouseArea{
         id:pagesupp
         anchors.fill: parent
         onClicked: {
             infodetails1.start()
             settdetails1.start()
             pagesup.opacity=0
             g1=0
             g2=0
             g3=0
             right1.source="qrc:/img/next.png"
             right2.source="qrc:/img/next.png"
             right3.source="qrc:/img/next.png"
             right4.source="qrc:/img/next.png"
             detailsOFF.start()
             detailsOFF1.start()
             detailsOFF2.start()
         }

     }
 }
 Image {
     id: pagesup1
     source: "qrc:/img/double-up-arrow.png"
     scale: 0.2
     opacity: 0
     anchors{
         top: background1.bottom
         topMargin: -5
         right: background1.right
         rightMargin: -20
     }
     MouseArea{
         id:pagesupp1
         anchors.fill: parent
         onClicked: {
             infodetails1.start()
             battdetails1.start()
             pagesup1.opacity=0
             g1=0
             g2=0
             g3=0
             right1.source="qrc:/img/next.png"
             right2.source="qrc:/img/next.png"
             right3.source="qrc:/img/next.png"
             right4.source="qrc:/img/next.png"
             detailsOFF.start()
             detailsOFF1.start()
             detailsOFF2.start()
         }

     }
 }
 Image {
     id: pagesup2
     source: "qrc:/img/double-up-arrow.png"
     scale: 0.2
     opacity: 0
     anchors{
         top: background2.bottom
         topMargin: -5
         right: background2.right
         rightMargin: -20
     }
     MouseArea{
         id:pagesupp2
         anchors.fill: parent
         onClicked: {
             infodetails1.start()
             upddetails1.start()
             pagesup2.opacity=0
             g1=0
             g2=0
             g3=0
             right1.source="qrc:/img/next.png"
             right2.source="qrc:/img/next.png"
             right3.source="qrc:/img/next.png"
             right4.source="qrc:/img/next.png"
             detailsOFF.start()
             detailsOFF1.start()
             detailsOFF2.start()
         }

     }
 }
 //------------------------------------------------//

 //-----------noti dots-----------------------

 Image {
     id: setdot
     source: "qrc:/img/full-stop.png"
     scale: 0.5
     //opacity: settingsfault? 1 : 0
     opacity: 0
     anchors{
         bottom: sett.top
         bottomMargin: -38
         left: sett.right
         leftMargin: -24
     }
 }
 Image {
     id: battdot
     source: "qrc:/img/full-stop.png"
     scale: 0.5
     //opacity: settingsfault? 1 : 0
     opacity: 0
     anchors{
         bottom: batt.top
         bottomMargin: -38
         left: batt.right
         leftMargin: -24
     }
 }
 Image {
     id: updatedot
     source: "qrc:/img/full-stop.png"
     scale: 0.5
     //opacity: settingsfault? 1 : 0
     opacity: 0
     anchors{
         bottom:updates.top
         bottomMargin: -38
         left: updates.right
         leftMargin: -24
      }
   }
 //--------settings specific table layout -------------
Rectangle{
    id:background
    color: "#06c7f2"
    width:480
    height: 40
    opacity: 0.5
    y:-1000
}
Rectangle{
    id:number
    height: 20
    width:30
    color: "#06c7f2"
    opacity: 0.3
    anchors{
        top: background.top
        topMargin: 2
        left: background.left
        leftMargin: 2

    }
}
    Text {
        id: num
        text: qsTr("NO.")
        font.family: aldo.name
        font.pixelSize: 20
        //font.bold: true
        color: "white"
        anchors{
            fill: number
            left: number.left
            leftMargin: 2
            verticalCenter: number.verticalCenter
        }
    }
    Rectangle{
        id:date
        height: 20
        width: 70
        color: "#06c7f2"
        opacity: 0.3
        anchors{
            left: number.right
            leftMargin: 1
            top: background.top
            topMargin: 2
        }

    }
    Text {
        id: datee
        text: qsTr("date")
        font.family: aldo.name
        font.pixelSize: 20
        color: "white"
        anchors{
            fill: date
            left: date.left
            leftMargin: 2
            verticalCenter: date.verticalCenter
        }
    }
    Rectangle{
        id:time
        height: 20
        width: 70
        color: "#06c7f2"
        opacity: 0.3
        anchors{
            left: date.right
            leftMargin: 1
            top: background.top
            topMargin: 2
        }

    }
    Text {
        id: timee
        text: qsTr("time")
        font.family: aldo.name
        font.pixelSize: 20
        color: "white"
        anchors{
            fill: time
            left: time.left
            leftMargin: 2
            verticalCenter: time.verticalCenter
        }
    }
    Rectangle{
        id:event
        height: 20
        width: 302
        color: "#06c7f2"
        opacity: 0.3
        anchors{
            left: time.right
            leftMargin: 1
            top: background.top
            topMargin: 2
        }

    }
    Text {
        id: eventt
        text: qsTr("event")
        font.family: aldo.name
        font.pixelSize: 20
        color: "white"
        anchors{
            fill: event
            left: event.left
            leftMargin: 2
            verticalCenter: event.verticalCenter
        }
    }
    Rectangle{
        id:nodetails
        color: "#06c7f2"
        opacity: 0.3
        width:number.width

        anchors{
            left: background.left
            leftMargin: 2
            top: number.bottom
            topMargin: 1
            bottom: background.bottom
            bottomMargin: 2
        }
    }
    Rectangle{
        id:datedetails
        color: "#06c7f2"
        opacity: 0.3
        width:date.width

        anchors{
            left: nodetails.right
            leftMargin: 1
            top: number.bottom
            topMargin: 1
            bottom: background.bottom
            bottomMargin: 2
        }
    }
    Rectangle{
        id:timedetails
        color: "#06c7f2"
        opacity: 0.3
        width:time.width

        anchors{
            left: datedetails.right
            leftMargin: 1
            top: number.bottom
            topMargin: 1
            bottom: background.bottom
            bottomMargin: 2
        }
    }
    Rectangle{
        id:eventdetails
        color: "#06c7f2"
        opacity: 0.3
        width:event.width
        anchors{
            left: timedetails.right
            leftMargin: 1
            top: event.bottom
            topMargin: 1
            bottom: background.bottom
            bottomMargin: 2
        }
    }
//----------------------------------------------------------//

//-----------battery specific table layout-----
    Rectangle{
        id:background1
        color: "#06c7f2"
        width:480
        height: 40
        opacity: 0.5
        y:-1000
    }
    Rectangle{
        id:number1
        height: 20
        width:30
        color: "#06c7f2"
        opacity: 0.3
        anchors{
            top: background1.top
            topMargin: 2
            left: background1.left
            leftMargin: 2

        }
    }
        Text {
            id: num1
            text: qsTr("NO.")
            font.family: aldo.name
            font.pixelSize: 20
            //font.bold: true
            color: "white"
            anchors{
                fill: number1
                left: number1.left
                leftMargin: 2
                verticalCenter: number1.verticalCenter
            }
        }
        Rectangle{
            id:date1
            height: 20
            width: 70
            color: "#06c7f2"
            opacity: 0.3
            anchors{
                left: number1.right
                leftMargin: 1
                top: background1.top
                topMargin: 2
            }

        }
        Text {
            id: datee1
            text: qsTr("date")
            font.family: aldo.name
            font.pixelSize: 20
            color: "white"
            anchors{
                fill: date1
                left: date1.left
                leftMargin: 2
                verticalCenter: date1.verticalCenter
            }
        }
        Rectangle{
            id:time1
            height: 20
            width: 70
            color: "#06c7f2"
            opacity: 0.3
            anchors{
                left: date1.right
                leftMargin: 1
                top: background1.top
                topMargin: 2
            }

        }
        Text {
            id: timee1
            text: qsTr("time")
            font.family: aldo.name
            font.pixelSize: 20
            color: "white"
            anchors{
                fill: time1
                left: time1.left
                leftMargin: 2
                verticalCenter: time1.verticalCenter
            }
        }
        Rectangle{
            id:event1
            height: 20
            width: 302
            color: "#06c7f2"
            opacity: 0.3
            anchors{
                left: time1.right
                leftMargin: 1
                top: background1.top
                topMargin: 2
            }

        }
        Text {
            id: eventt1
            text: qsTr("event")
            font.family: aldo.name
            font.pixelSize: 20
            color: "white"
            anchors{
                fill: event1
                left: event1.left
                leftMargin: 2
                verticalCenter: event1.verticalCenter
            }
        }
        Rectangle{
            id:nodetails1
            color: "#06c7f2"
            opacity: 0.3
            width:number.width

            anchors{
                left: background1.left
                leftMargin: 2
                top: number1.bottom
                topMargin: 1
                bottom: background1.bottom
                bottomMargin: 2
            }
        }
        Rectangle{
            id:datedetails1
            color: "#06c7f2"
            opacity: 0.3
            width:date1.width

            anchors{
                left: nodetails1.right
                leftMargin: 1
                top: number1.bottom
                topMargin: 1
                bottom: background1.bottom
                bottomMargin: 2
            }
        }
        Rectangle{
            id:timedetails1
            color: "#06c7f2"
            opacity: 0.3
            width:time1.width

            anchors{
                left: datedetails1.right
                leftMargin: 1
                top: number1.bottom
                topMargin: 1
                bottom: background1.bottom
                bottomMargin: 2
            }
        }
        Rectangle{
            id:eventdetails1
            color: "#06c7f2"
            opacity: 0.3
            width:event1.width
            anchors{
                left: timedetails1.right
                leftMargin: 1
                top: event1.bottom
                topMargin: 1
                bottom: background1.bottom
                bottomMargin: 2
            }
        }


 //--------------------------------------------------------------//

 //-----------updates specific table layuot-----------
        Rectangle{
            id:background2
            color: "#06c7f2"
            width:480
            height: 40
            opacity: 0.5
            y:-1000
        }
        Rectangle{
            id:number2
            height: 20
            width:30
            color: "#06c7f2"
            opacity: 0.3
            anchors{
                top: background2.top
                topMargin: 2
                left: background2.left
                leftMargin: 2

            }
        }
            Text {
                id: num2
                text: qsTr("NO.")
                font.family: aldo.name
                font.pixelSize: 20
                //font.bold: true
                color: "white"
                anchors{
                    fill: number2
                    left: number2.left
                    leftMargin: 2
                    verticalCenter: number2.verticalCenter
                }
            }
            Rectangle{
                id:date2
                height: 20
                width: 70
                color: "#06c7f2"
                opacity: 0.3
                anchors{
                    left: number2.right
                    leftMargin: 1
                    top: background2.top
                    topMargin: 2
                }

            }
            Text {
                id: datee2
                text: qsTr("date")
                font.family: aldo.name
                font.pixelSize: 20
                color: "white"
                anchors{
                    fill: date2
                    left: date2.left
                    leftMargin: 2
                    verticalCenter: date2.verticalCenter
                }
            }
            Rectangle{
                id:time2
                height: 20
                width: 70
                color: "#06c7f2"
                opacity: 0.3
                anchors{
                    left: date2.right
                    leftMargin: 1
                    top: background2.top
                    topMargin: 2
                }

            }
            Text {
                id: timee2
                text: qsTr("time")
                font.family: aldo.name
                font.pixelSize: 20
                color: "white"
                anchors{
                    fill: time2
                    left: time2.left
                    leftMargin: 2
                    verticalCenter: time2.verticalCenter
                }
            }
            Rectangle{
                id:event2
                height: 20
                width: 302
                color: "#06c7f2"
                opacity: 0.3
                anchors{
                    left: time2.right
                    leftMargin: 1
                    top: background2.top
                    topMargin: 2
                }

            }
            Text {
                id: eventt2
                text: qsTr("event")
                font.family: aldo.name
                font.pixelSize: 20
                color: "white"
                anchors{
                    fill: event2
                    left: event2.left
                    leftMargin: 2
                    verticalCenter: event2.verticalCenter
                }
            }
            Rectangle{
                id:nodetails2
                color: "#06c7f2"
                opacity: 0.3
                width:number2.width

                anchors{
                    left: background2.left
                    leftMargin: 2
                    top: number2.bottom
                    topMargin: 1
                    bottom: background2.bottom
                    bottomMargin: 2
                }
            }
            Rectangle{
                id:datedetails2
                color: "#06c7f2"
                opacity: 0.3
                width:date2.width

                anchors{
                    left: nodetails2.right
                    leftMargin: 1
                    top: number2.bottom
                    topMargin: 1
                    bottom: background2.bottom
                    bottomMargin: 2
                }
            }
            Rectangle{
                id:timedetails2
                color: "#06c7f2"
                opacity: 0.3
                width:time2.width

                anchors{
                    left: datedetails2.right
                    leftMargin: 1
                    top: number2.bottom
                    topMargin: 1
                    bottom: background2.bottom
                    bottomMargin: 2
                }
            }
            Rectangle{
                id:eventdetails2
                color: "#06c7f2"
                opacity: 0.3
                width:event2.width
                anchors{
                    left: timedetails2.right
                    leftMargin: 1
                    top: event2.bottom
                    topMargin: 1
                    bottom: background2.bottom
                    bottomMargin: 2
                }
            }

 //---------------------------------------------//

 //--------------battery table contents---------------
     Text {
         id: battNoDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:nodetails1.top
             topMargin: 3
             horizontalCenter: nodetails1.horizontalCenter
         }
     }
     Text {
         id: battdateDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:datedetails1.top
             topMargin: 3
             horizontalCenter: datedetails1.horizontalCenter
         }
     }
     Text {
         id: batttimeDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top: timedetails1.top
             topMargin: 3
             horizontalCenter: timedetails1.horizontalCenter
         }
     }
     Text {
         id: batteventDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors.fill: eventdetails1
         anchors{
             top: eventdetails1.top
             topMargin: 3
             horizontalCenter: eventdetails1.horizontalCenter
         }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    detailsON1.start()
                }
            }

     }
     Text {
         id: battNoDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:battNoDet.bottom
             topMargin: 3
             horizontalCenter: nodetails1.horizontalCenter
         }
     }
     Text {
         id: battdateDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:battdateDet.bottom
             topMargin: 3
             horizontalCenter: datedetails1.horizontalCenter
         }
     }
     Text {
         id: batttimeDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top: batttimeDet.bottom
             topMargin: 3
             horizontalCenter: timedetails1.horizontalCenter
         }
     }
     Text {
         id: batteventDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         //anchors.fill: eventdetails
         anchors{
             //top: batteventDet.bottom
             //topMargin: 3
             left: eventdetails1.left
             horizontalCenter: eventdetails1.horizontalCenter
             verticalCenter: batttimeDet1.verticalCenter
//             right: eventdetails.right
//             rightMargin: 0
//             left: eventdetails.left
//             leftMargin: 0
         }
         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsON1.start()
             }
         }
     }
//---------------------------------------------------------//

//---------------settings table content---------------------
     Text {
         id: settNoDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:nodetails.top
             topMargin: 3
             horizontalCenter: nodetails.horizontalCenter
         }
     }
     Text {
         id: settdateDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:datedetails.top
             topMargin: 3
             horizontalCenter: datedetails.horizontalCenter
         }
     }
     Text {
         id: setttimeDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top: timedetails.top
             topMargin: 3
             horizontalCenter: timedetails.horizontalCenter
         }
     }
     Text {
         id: setteventDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors.fill: eventdetails
         anchors{
             top: eventdetails.top
             topMargin: 3
             horizontalCenter: eventdetails.horizontalCenter
             //right: eventdetails.right
             //rightMargin: 0
             //left: eventdetails.left
             //leftMargin: 0
         }
         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsON.start()
             }
         }

     }
     Text {
         id: settNoDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:settNoDet.bottom
             topMargin: 3
             horizontalCenter: nodetails.horizontalCenter
         }
     }
     Text {
         id: settdateDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:settdateDet.bottom
             topMargin: 3
             horizontalCenter: datedetails.horizontalCenter
         }
     }
     Text {
         id: setttimeDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top: setttimeDet.bottom
             topMargin: 3
             horizontalCenter: timedetails.horizontalCenter
         }
     }
     Text {
         id: setteventDet1
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
        // anchors.fill: eventdetails
         anchors{
            // top:setteventDet.bottom
            // topMargin: 3
             verticalCenter:setttimeDet1.verticalCenter
             //horizontalCenter: eventdetails.horizontalCenter
             //right: eventdetails.right
             //rightMargin: 0
             left: eventdetails.left
             //leftMargin: 0
         }
         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsON.start()
             }
         }

     }
     Text {
         id: settNoDet2
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:settNoDet1.bottom
             topMargin: 3
             horizontalCenter: nodetails.horizontalCenter
         }
     }
     Text {
         id: settdateDet2
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:settdateDet1.bottom
             topMargin: 3
             horizontalCenter: datedetails.horizontalCenter
         }
     }
     Text {
         id: setttimeDet2
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:  setttimeDet1.bottom
             topMargin: 3
             horizontalCenter: timedetails.horizontalCenter
         }
     }
     Text {
         id: setteventDet2
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         //anchors.fill: eventdetails
         anchors{
             //top: setteventDet1.bottom
           //  topMargin: 3
             //horizontalCenter: eventdetails.horizontalCenter
            verticalCenter:settNoDet2.verticalCenter
             //right: eventdetails.right
             //rightMargin: 0
             left: eventdetails.left
             //leftMargin: 0
         }
         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsON.start()
             }
         }

     }
     Text {
         id: settNoDet3
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:settNoDet2.bottom
             topMargin: 3
             horizontalCenter: nodetails.horizontalCenter
         }
     }
     Text {
         id: settdateDet3
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:settdateDet2.bottom
             topMargin: 3
             horizontalCenter: datedetails.horizontalCenter
         }
     }
     Text {
         id: setttimeDet3
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top: setttimeDet2.bottom
             topMargin: 3
             horizontalCenter: timedetails.horizontalCenter
         }
     }
     Text {
         id: setteventDet3
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         //anchors.fill: eventdetails
         anchors{
             //top: setteventDet2.bottom
            // topMargin: 3
            // horizontalCenter: eventdetails.horizontalCenter
             verticalCenter: setttimeDet3.verticalCenter
             //right: eventdetails.right
             //rightMargin: 0
             left: eventdetails.left
             //leftMargin: 5
         }
         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsON.start()
             }
         }

     }
//------------------------------------------------------------------//

//---------------update table content---------------------------
     Text {
         id: upNoDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:nodetails2.top
             topMargin: 3
             horizontalCenter: nodetails2.horizontalCenter
         }
     }
     Text {
         id: updateDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top:datedetails2.top
             topMargin: 3
             horizontalCenter: datedetails2.horizontalCenter
         }
     }
     Text {
         id: uptimeDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors{
             top: timedetails2.top
             topMargin: 3
             horizontalCenter: timedetails2.horizontalCenter
         }
     }
     Text {
         id: upeventDet
         text: ""
         font.family: aldo.name
         font.pixelSize: 16
         color: "white"
         anchors.fill: eventdetails2
         anchors{
             top: eventdetails2.top
             topMargin: 3
             horizontalCenter: eventdetails2.horizontalCenter
             //right: eventdetails.right
             //rightMargin: 0
             //left: eventdetails.left
             //leftMargin: 0
         }
         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsON2.start()
             }
         }

     }
//---------------------------------------------------------//

//-----------------more details layout---------------------
     Rectangle{
         id:fdetails
         width: 400
         height: 0
         color: "#06c7f2"
         opacity: 0.5
         anchors{
             top: background.top
             topMargin: 0
             left: background.right
             leftMargin: 1
         }

         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsOFF.start()
             }
         }

     }
     Rectangle{
         id:fdetails1
         width: 400
         height: 0
         color: "#06c7f2"
         opacity: 0.5
         anchors{
             top: background1.top
             topMargin: 0
             left: background1.right
             leftMargin: 1
         }

         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsOFF1.start()
             }
         }

     }
     Rectangle{
         id:fdetails2
         width: 400
         height: 0
         color: "#06c7f2"
         opacity: 0.5
         anchors{
             top: background2.top
             topMargin: 0
             left: background2.right
             leftMargin: 1
         }

         MouseArea{
             anchors.fill: parent
             onClicked: {
                 detailsOFF2.start()
             }
         }

     }

//     Text {
//         id: battmoredetails1
//         text: qsTr("")
//         font.family: aldo.name
//         font.pixelSize: 16
//         color: "white"
//         opacity: 0
//         anchors{
//             top:fdetails.top
//             topMargin: 3
//             left:fdetails.left
//             leftMargin: 2
//         }
//     }
//     Text {
//         id: battmoredetails2
//         text: qsTr("")
//         font.family: aldo.name
//         font.pixelSize: 16
//         color: "white"
//         opacity: 0
//         anchors{
//             top:fdetails.top
//             topMargin: 3
//             left:fdetails.left
//             leftMargin: 2
//         }
//     }

     ParallelAnimation{
         id:detailsON

         NumberAnimation {
             target: fdetails
             property: "height"
             from:0
             to:100
             duration: 200
             easing.type: Easing.InOutQuad
         }

     }
     ParallelAnimation{
         id:detailsOFF

         NumberAnimation {
             target: fdetails
             property: "height"
             from:fdetails.height
             to:0
             duration: 200
             easing.type: Easing.InOutQuad
         }
     }

     ParallelAnimation{
         id:detailsON1

         NumberAnimation {
             target: fdetails1
             property: "height"
             from:0
             to:100
             duration: 200
             easing.type: Easing.InOutQuad
         }

     }
     ParallelAnimation{
         id:detailsOFF1

         NumberAnimation {
             target: fdetails1
             property: "height"
             from:fdetails.height
             to:0
             duration: 200
             easing.type: Easing.InOutQuad
         }
     }

     ParallelAnimation{
         id:detailsON2

         NumberAnimation {
             target: fdetails2
             property: "height"
             from:0
             to:100
             duration: 200
             easing.type: Easing.InOutQuad
         }

     }
     ParallelAnimation{
         id:detailsOFF2

         NumberAnimation {
             target: fdetails2
             property: "height"
             from:fdetails.height
             to:0
             duration: 200
             easing.type: Easing.InOutQuad
         }
     }
//---------------------------------------------------------//

//----------------selection table animation -----------------------

    ParallelAnimation{
        id:infodetails

        NumberAnimation {
            target: selection
            property: "y"
            from:-1000
            to:70
            duration: 300
            easing.type: Easing.InOutQuad
        }
    }

//-----------------settings table animation-----------------
    ParallelAnimation{
        id:settdetails

        NumberAnimation {
            target: background
            property: "y"
            from:-1000
            to:94
            duration: 300
            easing.type: Easing.InOutQuad
        }
    }

//-------------battery table animation-------------------
    ParallelAnimation{
        id:battdetails

        NumberAnimation {
            target: background1
            property: "y"
            from:-1000
            to:94
            duration: 300
            easing.type: Easing.InOutQuad
        }
    }

//--------------update table animation---------------------
    ParallelAnimation{
        id:upddetails

        NumberAnimation {
            target: background2
            property: "y"
            from:-1000
            to:94
            duration: 300
            easing.type: Easing.InOutQuad
        }
    }

 //---------------off animations-------------------
    ParallelAnimation{
        id:infodetails1

        NumberAnimation {
            target: selection
            property: "y"
            from:70
            to:-1000
            duration: 300
            easing.type: Easing.InOutQuad
        }
    }
    ParallelAnimation{
        id:settdetails1

        NumberAnimation {
            target: background
            property: "y"
            from:94
            to:-1000
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }
    ParallelAnimation{
        id:battdetails1

        NumberAnimation {
            target: background1
            property: "y"
            from:94
            to:-1000
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }
    ParallelAnimation{
        id:upddetails1

        NumberAnimation {
            target: background2
            property: "y"
            from:94
            to:-1000
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }
}


