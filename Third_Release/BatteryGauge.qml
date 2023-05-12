import QtQuick 2.15

Item {
    id:mainBattery

    property int socValue: 75      // from 0 to 100
    property int sohValue: 100      // from 0 to 100
    property int sotValue: 100      // from 0 to 100

    property bool soVisiblity: true  //to make it invisible in battery Page

    width: 220
    height :220
    //anchors.fill: parent

  Image{
    id:circle
    source: "qrc:/img/gauge_circle.png"
    fillMode: Image.PreserveAspectFit
    Image{
        id:dashes
        source: "qrc:/img/gauge_dashs.png"

    }

    Gauge_main{
        id:batterySoc
        anchors.centerIn: parent
        size: 900
        socValue: mainBattery.socValue
       // value: mapper()
        start: 180
        end:315

        function mapper(){
           return (socValue - 0) / (100 - 0) * (end - start) ;
        }

        Image {
            id: socIcon
            anchors.centerIn: parent
            scale: 1.5
            source: "qrc:/img/battery_soc2.png"
        }
    }

    Gauge{
        id:batterySoh
        anchors.centerIn: parent
        visible: soVisiblity      //to make it invisible in battery Page
        size: 700
        socValue:sohValue
        lineWidth: 15
        percentage: ""
        primaryColor: "#05f228"
        start: 0
        end:45

        Image {
            id: sohIcon
            anchors{

                left: parent.right
               leftMargin:-10
                bottom: parent.bottom
                bottomMargin: 180
            }
            source: "qrc:/img/battery_soh.png"
        }
    }

    Gauge{
        id:batterySot
        anchors.centerIn: parent
        visible: soVisiblity      //to make it invisible in battery Page
        size: 700
        socValue: mainBattery.sotValue
        lineWidth: 15
        percentage: ""
        primaryColor: "#f2916e"
        start: 90
        end:135

        Image {
            id: sotIcon
            anchors{

                left: parent.left
               leftMargin:180
                top: parent.bottom
                topMargin: -20

            }
            source: "qrc:/img/battery_temperature.png"
        }
    }
 }
    onSocValueChanged: {
        if(socValue <= 20){
            socIcon.source="qrc:/img/low-battery-level.png"
            socIcon.scale=3.5
        } else if(socValue <= 25){
            socIcon.source="qrc:/img/lowbatterylevel.png"
           socIcon.scale=3.5
        } else if(socValue <= 80) {
            socIcon.source="qrc:/img/battery_soc2.png"
            socIcon.scale=1.6
        } else if(socValue > 80) {
            socIcon.source="qrc:/img/fullbattery.png"
            socIcon.scale=3.5
        }

    }
}
