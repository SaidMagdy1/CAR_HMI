/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
//import UntitledProject3 1.0
//import QtQuick.Studio.Components 1.0


Window{
    id: rootPage

    visible: true
    width: 1920
    height: 1080
    color: "#000000"
    //clip: true

    readonly property int cmd_RPM:    1
    readonly property int cmd_SOC:    2
    readonly property int cmd_HEALTH:   3
    readonly property int cmd_CHARGING:   4
    readonly property int cmd_SEATB:   5
    property bool seatb: false
    property string current: "speed"

    Image {
        id: vector_2677
        x: -112
        y: -16
        z:-2
        width: 2284
        height: 1144
        opacity: 0.4
        source: "Vector_2677.jpg"
        fillMode: Image.PreserveAspectFit
    }


    FontLoader
    {
        id: fontHelveticaSemibold
        source:"helvetica.ttf"
    }




    Image {
        id: homepage
        x: 42
        y: 94
        width: 70
        height: 70
        source:"gauge.png"
        fillMode: Image.PreserveAspectFit
        MouseArea{
            id : speedPage
            anchors.fill: parent
            onClicked: {
                if(current=="battery"){
                    exit2.start();
                    start.start();
                    current="speed";
                }else if(current=="car"){
                    exit3.start();
                    start.start();
                    current="speed";
                }
            }
        }
    }
    Image {
        id: batterypage
        x: 42
        y: 276
        width: 70
        height: 70
        source:"batteryICON.png"
        fillMode: Image.PreserveAspectFit
        MouseArea{
            id : batteryPage
            anchors.fill: parent
            onClicked: {
                if(current=="speed"){
                    exit.start();
                    start2.start();
                    current="battery";
                }else if(current=="car"){
                    exit3.start();
                    start2.start();
                    current="battery";
                }
            }
        }
    }
    Image {
        id: carpage
        x: 42
        y: 458
        width: 70
        height: 70
        source:"carICON.png"
        fillMode: Image.PreserveAspectFit
        MouseArea{
            id : carPage2
            anchors.fill: parent
            onClicked: {
                if(current=="speed"){
                    exit.start();
                    start3.start();
                    current="car";
                }else if(current=="battery"){
                    exit2.start();
                    start3.start();
                    current="car";
                }
            }
        }
    }
    Loader{
        id : load
        source: "speedpage.qml"
        anchors.fill: parent
        //onSourceChanged: start.running = true
        ParallelAnimation{
            id: start
            NumberAnimation {

                target: load.item
                property: "scale"
                from: 0.1
                to: 1
                duration: 200
                easing.type: Easing.InExpo
            }

            NumberAnimation {

                target: load.item
                property: "opacity"
                from: 0
                to: 1
                duration: 200
                easing.type: Easing.InExpo
            }
        }
        ParallelAnimation{
            id : exit

        NumberAnimation{
            target: load.item
            property: "scale"
            from : 1
            to : 0.1
            duration: 200
        }
        NumberAnimation{
            target: load.item
            property: "opacity"
            from : 1
            to : 0
            duration: 200
        }
        }
    }
    Loader{
        id : load2
        source: "batterypage.qml"
        anchors.fill: parent
        //onSourceChanged: start2.running = true
        ParallelAnimation{
            id: start2
            NumberAnimation {

                target: load2.item
                property: "scale"
                from: 0.1
                to: 1
                duration: 200
                easing.type: Easing.InExpo
            }

            NumberAnimation {

                target: load2.item
                property: "opacity"
                from: 0
                to: 1
                duration: 200
                easing.type: Easing.InExpo
            }
        }
        ParallelAnimation{
            id : exit2

        NumberAnimation{
            target: load2.item
            property: "scale"
            from : 1
            to : 0.1
            duration: 200
        }
        NumberAnimation{
            target: load2.item
            property: "opacity"
            from : 1
            to : 0
            duration: 200
        }
        }
    }
    Loader{
        id : load3
        source: "carpage.qml"
        anchors.fill: parent
        //onSourceChanged: start.running = true
        ParallelAnimation{
            id: start3
            NumberAnimation {

                target: load3.item
                property: "scale"
                from: 0.1
                to: 1
                duration: 200
                easing.type: Easing.InExpo
            }

            NumberAnimation {

                target: load3.item
                property: "opacity"
                from: 0
                to: 1
                duration: 200
                easing.type: Easing.InExpo
            }
        }
        ParallelAnimation{
            id : exit3

        NumberAnimation{
            target: load3.item
            property: "scale"
            from : 1
            to : 0.1
            duration: 200
        }
        NumberAnimation{
            target: load3.item
            property: "opacity"
            from : 1
            to : 0
            duration: 200
        }
        }
    }

    Rectangle {
        id: rectangle1
        x: 2
        y: -8
        z:-1
        width: 150
        height: 1090
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#02071a"
            }

            GradientStop {
                position: 1
                color: "#87235e62"
            }
            orientation: Gradient.Horizontal
        }
        MouseArea{
            id:mo
            anchors.fill: parent

            hoverEnabled: true
            onEntered : expand.start()
            onExited:  shrink.start()
        }


        Text {
            id: title3
            x: 132
            y: 530
            text:"CAR"
            color :"white"
            font.pointSize: 20
            font.family: fontHelveticaSemibold.name
            opacity:0
            MouseArea{
                id : carPage
                anchors.fill: parent
                onClicked: {
                    if(current=="battery"){
                        exit2.start();
                        start3.start();
                        current="car";
                    }else if(current=="speed"){
                        exit.start();
                        start3.start();
                        current="car";
                    }
                }
            }
        }
        Text {
            id: title2
            x: 132
            y: 348
            text:"BATTERY"
            color :"white"
            font.pointSize: 20
            font.family: fontHelveticaSemibold.name
            opacity:0
            MouseArea{
                id : batteryPage2
                anchors.fill: parent
                onClicked: {
                    if(current=="speed"){
                        exit.start();
                        start2.start();
                        current="battery";
                    }else if(current=="car"){
                        exit3.start();
                        start2.start();
                        current="battery";
                    }
                }
            }
        }
        Text {
            id: title1
            x: 132
            y: 166
            text:"SPEED"
            color :"white"
            font.pointSize: 20
            font.family: fontHelveticaSemibold.name
            opacity:0
            MouseArea{
                id : speedPage2
                anchors.fill: parent
                onClicked: {
                    if(current=="battery"){
                        exit2.start();
                        start.start();
                        current="speed";
                    }else if(current=="car"){
                        exit3.start();
                        start.start();
                        current="speed";
                    }
                }
            }

            ParallelAnimation{
                id:expand
                NumberAnimation {
                    target: rectangle1
                    property: "width"
                    duration: 300
                    to : 330
                    easing.type: Easing.bezierCurve
                }

                NumberAnimation {
                    target: title3
                    property: "opacity"
                    duration: 100
                    from : 0
                    to : 1
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title3
                    property: "y"
                    duration: 100
                    to : 485
                    from : 530
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title2
                    property: "opacity"
                    duration: 100
                    from : 0
                    to : 1
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title2
                    property: "y"
                    duration: 100
                    to : 305
                    from : 348
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title1
                    property: "opacity"
                    duration: 100
                    from : 0
                    to : 1
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title1
                    property: "y"
                    duration: 100
                    to : 121
                    from : 166
                    easing.type: Easing.bezierCurve
                }

            }
            ParallelAnimation{
                id:shrink
                NumberAnimation {
                    target: rectangle1
                    property: "width"
                    duration: 300
                    to : 150
                    easing.type: Easing.bezierCurve
                }

                NumberAnimation {
                    target: title3
                    property: "opacity"
                    duration: 100
                    from : 1
                    to : 0
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title3
                    property: "y"
                    duration: 100
                    from : 485
                    to : 530
                    easing.type: Easing.bezierCurve
                }

                NumberAnimation {
                    target: title2
                    property: "opacity"
                    duration: 100
                    from : 1
                    to : 0
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title2
                    property: "y"
                    duration: 100
                    from : 305
                    to : 348
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title1
                    property: "opacity"
                    duration: 100
                    from : 1
                    to : 0
                    easing.type: Easing.bezierCurve
                }
                NumberAnimation {
                    target: title1
                    property: "y"
                    duration: 100
                    from : 121
                    to : 166
                    easing.type: Easing.bezierCurve
                }
            }


        }


        Image {
            id: seatbelt
            source: "seat-belt .png"
            height : 80
            width: 80
            x : 1751
            y : 736
            visible : seatb
        }
        Timer
        {
            id : timer
            interval: 1000 // 1 second
            running: true
            repeat: true
            onTriggered:
            {
                time.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
                date.text = Qt.formatDateTime(new Date(), "dddd dd MMMM")
            }
        }
        Text {
            id: time
            text:qsTr("10:25")
            y:20
            x:920-width
            color: "#4ccdd5"
            font.pointSize: 15
            font.family: fontHelveticaSemibold.name
        }
        Text {
            id: date
            text:qsTr("March 25 2020")
            font.pointSize: 15
            font.family: fontHelveticaSemibold.name
            color: "#4ccdd5"
            y:20
            x: 960
        }
        Connections{
            target: serial


            onChangedSEATB:
            {
                if (value == 1){
                    seatb = true;
                }if (value == 0){
                    seatb = false;
                }
            }
        }

    }

}



