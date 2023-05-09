import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

//import QtQuick3D 1.15
//import Qt3D.Core 2.0
//import Qt3D.Render 2.0

Window {
    id:mainWindow
    width: 1920
    height: 585
    visible: true
    color: "black"

    property bool turnRight: true    //should be adjusted to Defualt 0 ->false
    property bool turnLeft: true
    property bool seatBelt: true
    property bool lights: false
    property bool chargingState :true
    property bool door: false
    property bool frontlight:false
    property bool backlight:false
    property bool lowPower: true
    property bool smallPage: true
    property bool batState : true

    property int speedValue: 160
    property int heatValue:5
    property string smode: "neutral"
    property int socValue: 27     // from 0 to 100
    property int sohValue: 99    // from 0 to 100
    property int sotValue: 70     // from 0 to 100

    property int transTime: 500
    property int pages: 0

    property int tire1: 25
    property int tire2: 26
    property int tire3: 26
    property int tire4: 26

    property int setPressure: 26            //normal tire pressure

    property string carMode: "n o r m a l"

    Image {
        id: background
        source: "qrc:/img/bg.jpg"
        anchors.fill: parent


    }

    Loader{
        id:mainLoader
        anchors.fill: parent
        source: "MainPage.qml"
    }

    Header{
        pages: pages
    }


    Footer{
        id : footer
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
    }

//    Notification{

//    }
}
