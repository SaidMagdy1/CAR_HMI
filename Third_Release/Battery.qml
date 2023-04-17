import QtQuick 2.15

Item {
     id:mainBattery

     property int socValue: 75      // from 0 to 100
     property int sohValue: 100      // from 0 to 100
     property int sotValue: 100      // from 0 to 100
     width: 220
     height :220
    //anchors.fill: parent

Image{
    id:circle
    source: "qrc:/img/gauge_circle.png"
    fillMode: Image.PreserveAspectFit
    Image{
        id:dashes
        source: "qrc:/gauge_dashs.png"

    }

    Gauge_main{
        id:batterySoc
        anchors.centerIn: parent
        size: 900
        percent: mainBattery.socValue
        value: mapper()
        start: 180
        end:315

        function mapper(){
           return (percent - 0) / (100 - 0) * (end - start) ;
        }

        Image {
            id: socIcon
            anchors.centerIn: parent
            source: "qrc:/battery_soc2.png"
        }
    }

    Gauge{
        id:batterySoh
        anchors.centerIn: parent
        size: 700
        value: mainBattery.sohValue
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
            source: "qrc:/battery_soh.png"
        }
    }

    Gauge{
        id:batterySot
        anchors.centerIn: parent
        size: 700
        value: mainBattery.sotValue
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
            source: "qrc:/battery_temperature.png"
        }
    }
}
}
