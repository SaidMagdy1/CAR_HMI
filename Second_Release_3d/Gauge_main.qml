import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    id: root


    property real value: 0
    property real percent : 0
    property string percentage: percent+"%"
    property int size:300
    property int arcLength: root.end-root.start
    property real start:100
    property real end :300

    property int lineWidth: root.size/30


 FontLoader { id:aldo ; source: "AldotheApache.ttf" }
    property string iconSource: "qrc:/battery_soc2.png"
  //  property string gaugeName: "Speed"

    property color primaryColor: "#06c7f2"      //fillcolor
    property color secondaryColor:  "transparent"    //no fillcolor

    property int animationDuration: 500

    width: size
    height: size

//    Text{
//        id:uniteText
//        anchors.top: valueText.bottom
//        anchors.horizontalCenter: valueText.horizontalCenter
//        text: root.unite
//        font.bold: true
//        font.pixelSize: 20
//        color: "#143a8c"
//    }


    Text{
        id:percentText   //Value
        x:parent.width/2-100
        y:parent.height/2-200
//        anchors.horizontalCenter: icon.horizontalCenter
//        anchors.bottomMargin: 20
        text: percentage
        font.bold: true
        font.pointSize:100
        font.family:aldo.name
        color: "#06c7f2"
    }

//    Text{
//        id:gaugeText   //gaugeName
//        anchors.top: parent.bottom
//        anchors.horizontalCenter: parent.horizontalCenter
//        text: root.gaugeName
//        font.bold: true
//        font.pixelSize: 20
//        color: "#1551d4"
//    }



    Canvas {
        id: canvas
        property real startA:root.start
        property real endA :root.end
        property real degree: ((root.value*root.arcLength)/100)-3
       //  property real value: slid1.value

        anchors.fill: parent
        antialiasing: true

        onDegreeChanged: {
            requestPaint();
        }

        onPaint: {
            var ctx = getContext("2d");

            var x = root.width/2;
            var y = root.height/2;

            var radius = root.size/2 - root.lineWidth
            var startAngle = (Math.PI/180) * startA ;
            var fullAngle = (Math.PI/180) * endA ;        //(270 + 360)
            var progressAngle = (Math.PI/180) * (startA + degree);

            ctx.reset()

            ctx.lineCap = 'square';   //lineEdge
            ctx.lineWidth = root.lineWidth;

            ctx.beginPath();
            ctx.arc(x, y, radius, startAngle, fullAngle);

            ctx.strokeStyle = root.secondaryColor ;
            ctx.stroke();

            ctx.beginPath();
            ctx.arc(x, y, radius, startAngle, progressAngle);
            var xStart = x + Math.cos(startAngle) * radius;
            var xEnd = x + Math.cos(progressAngle) * radius;
            var yStart = y + Math.sin(startAngle) * radius;
            var yEnd = y + Math.sin(progressAngle) * radius;
            var gradient = ctx.createLinearGradient(xStart, yStart, xEnd, yEnd);
            gradient.addColorStop(0,"transparent");
            gradient.addColorStop(1,root.primaryColor);
            ctx.strokeStyle = gradient;
            ctx.stroke();
        }

        Behavior on degree {
            NumberAnimation {
                duration: root.animationDuration
            }
        }
    }
}
