import QtQuick 2.15

Item {

 id:batteryChart
 width: 200
 height: 150
 clip: true
 property int rate : 1        //this the rate of change in X-AXis
 property int step : 1        //this the rate of change in Y-AXis

 property int max : 100        //this the MAX value the line will saturate at
 property int min : 2         //this the MIN value the line will saturate at
 property int value : 50

 property color lineColor: "#06c7f2"

 property real lineX: 0
 property real lineY: height-value



 Timer{
     id:chargingTimer
     interval: 500
     repeat: true
     running: true
     onTriggered: {

          chartCanvas.requestPaint();
          batteryChart.lineX =  batteryChart.lineX + rate/10
          batteryChart.lineY = height - batteryChart.value
           //value =value+1
         if(batteryChart.lineX >= batteryChart.width-20){
              chartCanvas.x =  chartCanvas.x - rate/10 ;
              //chartCanvas.width = chartCanvas.width + 10 ;
           }


//             if(mainWindow.batState){                       // testing thr chart

//                batteryChart.lineY = batteryChart.lineY - step/10;
//                  if(batteryChart.lineY <= (parent.height -max) ){
//                      batteryChart.lineY =parent.height -max;
//                  }
//              }
//              else{
//                batteryChart.lineY = batteryChart.lineY + step/10;
//                 if(batteryChart.lineY >= (parent.height-min ) ){
//                     batteryChart.lineY =parent.height-min;
//                 }
//              }
       }
   }
 Rectangle{
     id:underChartft
     anchors.fill: chartCanvas
     gradient: Gradient{
         GradientStop{position: 1 ;color:"blue" }
         GradientStop{position: 0 ;color:"transparent" }


       }

     opacity: .05
   }
  Canvas{
     id:chartCanvas
     width: batteryChart.width*5
     height: batteryChart.height

     property int canvasX: 0
     property int canvasY: batteryChart.lineY
     property int canvasbottom: height
     property color lColor: batteryChart.lineColor



     MouseArea{
          id:clearChart
          anchors.fill: parent
          onClicked:{
                // batState = !batState
              chartCanvas.clear();
           }
         // onPositionChanged: batteryChart.requestPaint();

        }
     function clear(){
         var ctx=getContext('2d');
         ctx.reset();
         chartCanvas.requestPaint();
       }



     onPaint: {
         var ctx=getContext('2d');
         ctx.lineWidth=4;
         ctx.strokeStyle=lColor;
         ctx.beginPath();
         ctx.moveTo(canvasX,canvasY);
         canvasX=batteryChart.lineX ;
         canvasY=batteryChart.lineY ;
         ctx.lineTo(canvasX,canvasY);

         //ctx.moveTo(canvasX,canvasbottom);
        // ctx.lineTo(canvasX,canvasbottom);
         // ctx.clip()
//         ctx.shadowColor = "#2ed5fa";
//         ctx.shadowOffsetX = 0;
//         ctx.shadowOffsetY = 5;
//         ctx.shadowBlur = 0.005;
         ctx.stroke();


         ctx.beginPath();
         var gradient = ctx.createLinearGradient(canvasX, canvasY,canvasX,canvasbottom);
         gradient.addColorStop(1,"transparent");
         gradient.addColorStop(0,"#416870");
         ctx.fillStyle = gradient;
         ctx.fillRect(canvasX, canvasY,1,canvasbottom);
         //ctx.rect(canvasX, canvasY, 1,canvasY);
         ctx.stroke();




       }


   }

  Behavior on lineY {
      NumberAnimation { duration: 200 }

  }

}
