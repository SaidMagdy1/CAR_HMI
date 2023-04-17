import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.15

Item {
    id : batterItem
 height : 1080
 width : 1920
 x:0
 opacity: 0
//anchors.right: parent.right
readonly property int cmd_RPM:    1
readonly property int cmd_SOC:    2
readonly property int cmd_HEALTH:   3
readonly property int cmd_CHARGING:   4
readonly property int cmd_SEATB:   5
property bool charging: false
property int batterypercent: 0


FontLoader
{
    id: fontHelveticaSemibold
    source:"helvetica.ttf"
}
Image {
    id: battery
    scale: 2
    source: "battery.png"
    z:0
    anchors.centerIn: parent
    fillMode: Image.PreserveAspectFit
    Image {
        id: percent
        source: "percentR.png"
        anchors.bottom:parent.bottom
        width:parent.width-10
        z:-3
        //opacity: 0
        height:getheight()
        function op(){
            var percentage = batterypercent
            var ret=0
            if(charging==true){
                ret = 0
            }
            else{
            ret = (100-percentage)/100
            }
            return ret
        }
        function getheight(){
            var percentage = batterypercent
            var ret = (battery.height)*percentage/100
            return ret
        }


    }


    Image {
        id: percentG
        source: "percentG.png"
        anchors.bottom:parent.bottom
        z:-3
        //opacity: 0
        height:getheight()
        width:parent.width-10
        opacity: op()
        function getheight(){
            var percentage = batterypercent
            var ret = (battery.height)*percentage/100
            return ret
        }
        function op(){
            var percentage = batterypercent
            var ret=0
            if(charging==true){
                ret = 1
            }
            else{
            ret = percentage/100
            }
            return ret
        }
    }




    AnimatedImage{
        z:-1
        id : animation
        source: "charging.gif"
        anchors.bottom: battery.bottom
        anchors.verticalCenter: parent.verticalCenter
        //x:2
        //y:0
        visible: check()
        fillMode: Image.PreserveAspectFit
        width : battery.width


        function check(){

            var ret=false
            if(charging==true){
                ret = true
            }
            else{
            ret = false}
            return ret
        }

    }

}
Gauge
{
    id: speed
    x: 1716
    y: 94
    z:2
    width: 152
    height: 147
    unit:"RPM"
    fontsize: 20
    strokesize: 10
    minValue: 0
    paramValue : 60
    maxValue: 240
    opacity: 1

}
Text {
    id: speedtext
    x: 1716
    y: 250
   text:"SPEED"
  color :"#4ccdd5"
  font.pointSize: 25
  font.family: fontHelveticaSemibold.name
}
Connections{
    target: serial
    onChangedRPM:
    {
        speed.paramValue = Math.round(240*(value/4096));
    }
    onChangedSOC:
    {
       batterypercent = Math.round(85*(value/4096))+15;

    }
    onChangedHEALTH:
    {
        health.paramValue = Math.round(100*(value/4096));
    }
    onChangedCHARGING:
    {
        if (value == 1){
            charging = true;
        }if (value == 0){
            charging = false;
        }
    }
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
