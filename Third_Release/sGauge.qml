import QtQuick 2.12
//import QtQuick.Controls 2.15

Item {
    id:base
    property string name: "  "
    property real start: -3
    property real end: -222
    property real currentv: 200
    property color seccolor: "transparent"
    property real finalv: (start+currentv)*(Math.PI/180)
    property color primcol: "#06c7f2"
    property real linesize: 27


    property int raduis: width/2 -(linesize/2)     // this is to use it on Battery page *******
    property real xArc : width/2
    property real yArc: height/2


    height: 675
    width: height
    //x:0
    //y:0

    FontLoader{
        id: aldotheapache
        source: "AldotheApache.ttf"
    }
    Text {
        id: gparam
        text: name
        font.family: aldotheapache.name
        font.pointSize: 35
        color: "#ffffff"
        anchors.centerIn: parent
    }



    Canvas{
        id:canvas
        property real starta: (Math.PI/180)* base.start
        property real enda: (Math.PI/180)* base.end
        property real degree: base.currentv
        property real proga:  -(Math.PI/180)*(degree+40)
        property real xvalue : parent.xArc
        property real yvalue: parent.yArc
        property real radius: parent.raduis

        anchors.fill:parent
        anchors.centerIn: parent
        height: base.height
        width: base.width
        antialiasing: true
        visible: true

        onDegreeChanged: requestPaint()

        onPaint: {
            var ctx=getContext("2d")
            ctx.reset();

            ctx.beginPath();
            ctx.arc(xvalue,yvalue,radius,starta,enda,false);

            var gradient = ctx.createLinearGradient(0,650,650,0);
            gradient.addColorStop(0,seccolor);
            gradient.addColorStop(0.44,primcol);
            gradient.addColorStop(1,primcol);

            ctx.strokeStyle= gradient;
            ctx.lineWidth = linesize;
            ctx.lineCap='square' ;
            ctx.stroke();

        }
    }


}
