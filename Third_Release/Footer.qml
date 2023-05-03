import QtQuick 2.15

Item {
    id : root
    width:395.5
    height:47
    FontLoader{
        id: aldotheapache
        source: "AldotheApache.ttf"
    }
    Image {
        id: logo
        source: "qrc:/img/logo.png"
        anchors.centerIn: root
        scale:0.6
    }

    Text {
        id: temp
        text: qsTr("25 c")
        anchors.bottom: root.bottom
        //anchors.left:logo.left
        //anchors.leftMargin: 20

        x: logo.x+logo.width+20
        color: "white"
        font.family: aldotheapache.name
        font.pointSize: 10


    }

    Image {
        id: weather
        source: "qrc:/img/weather.png"
        anchors.top: root.top
        x:temp.x+(temp.width-width)/2
        scale :0.6
    }


    Text {
        id: time
        text: qsTr("09:00 AM")
        anchors.top: root.top
        anchors.topMargin: 10
        x:date.x+(date.width-width)/2
        color: "white"
        font.family: aldotheapache.name
        font.pointSize: 13


    }

    Text {
        id: date
        text: qsTr("13/12/2022")
        anchors.bottom: root.bottom
        //anchors.left:logo.left
        //anchors.leftMargin: 20

        x: logo.x-width-20
        color: "white"
        font.family: aldotheapache.name
        font.pointSize: 10


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




}
