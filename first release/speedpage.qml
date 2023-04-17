import QtQuick 2.12

Item {
    FontLoader
    {
        id: fontHelveticaSemibold
        source:"helvetica.ttf"
    }
    readonly property int cmd_RPM:    1
    readonly property int cmd_SOC:    2
    readonly property int cmd_HEALTH:   3
    readonly property int cmd_CHARGING:   4
    readonly property int cmd_SEATB:   5
    property bool charging: false
    property bool seatb: false

    Gauge
    {
        id: rpm
        x: 539
        y: 109
        width: 850
        height: 850
        unit:"RPM"
        fontsize: 70
        strokesize: 24
        minValue: 0
        paramValue : 100
        maxValue: 240

        Image {
            id: pointer
            source: "pointer.png"
            rotation: ((rpm.paramValue ) * 300 / 240) -150
            anchors.centerIn: parent
            height:750
            width: height
            z:2
        }


    }
    Gauge
    {
        id: charge
        x: 1716
        y: 94
        z:2
        width: 152
        height: 147
        unit:"CHARGE"
        fontsize: 20
        strokesize: 10
        minValue: 0
        paramValue : 60
        maxValue: 100
        opacity: paramValue/100

    }
    Image {
        id: socimg
        source: sourcer()
        height: 50
        width : 50
        x: 1767
        y: 214
        function sourcer ()
        {
            var s = "soc3.png"
            if(charging == false ){
            if (charge.paramValue<30){
                s="soc1.png"
            }
            else if (charge.paramValue>30&& charge.paramValue<60){
                s="soc2.png"
            }else{
                s="soc3.png"
            }}else if(charging == true ){
                s="chargingimg.png"
            }

            return s
        }
    }
    Gauge
    {
        id: charge2
        x: 1716
        y: 94
        width: 152
        height: 147
        unit:"CHARGE"
        fontsize: 20
        strokesize: 10
        minValue: 0
        paramValue : charge.paramValue
        maxValue: 100
        mcolor: "red"
        opacity: (100-paramValue)/100
    }
    Gauge
    {
        id: health
        x: 1716
        y: 276
        z:2
        width: 152
        height: 147
        unit:"HEALTH"
        fontsize: 20
        strokesize: 10
        minValue: 0
        paramValue : 60
        maxValue: 100
        opacity: paramValue/100

    }
    Image {
        id: healthimg
        source: sourcer()
        height: 50
        width : 50
        x: 1767
        y: 396
        function sourcer ()
        {
            var s = "health3.png"
            if (health.paramValue<30){
                s="health1.png"
            }
            else if (health.paramValue>30&&health.paramValue<60){
                s="health2.png"
            }else{
                s="health3.png"
            }
            return s
        }
    }
    Gauge
    {
        id: health2
        x: 1716
        y: 276
        width: 152
        height: 147
        unit:"HEALTH"
        fontsize: 20
        strokesize: 10
        minValue: 0
        paramValue : health.paramValue
        maxValue: 100
        mcolor: "red"
        opacity: (100-paramValue)/100
    }
    Text {
        id: battery
        x: 1716
        y: 470
       text:"BATTERY"
      color :"#4ccdd5"
      font.pointSize: 25
      font.family: fontHelveticaSemibold.name
    }
    Image {
        id: car
        opacity: 1
        source: "car.png"
        fillMode: Image.PreserveAspectFit
    }
    Connections{
        target: serial
        onChangedRPM:
        {
            rpm.paramValue = Math.round(240*(value/4096));
        }
        onChangedSOC:
        {
            charge.paramValue = Math.round(100*(value/4096));

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
