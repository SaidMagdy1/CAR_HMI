import QtQuick 2.15
import QtQuick.Controls 2.15

Item {


    property int b: 0
    property int flags: f1+f2+f3+f4+f5+f6+f7+f8
    property bool ind: false
    property bool ind2: false
    property string sol: "enter"
    property string sol1: "enter"
    property bool flag: false
    property int f1: 0
    property int f2: 0
    property int f3: 0
    property int f4: 0
    property int f5: 0
    property int f6: 0
    property int f7: 0
    property int f8: 0
    property int yvalue: 0
    property bool settingsfault: false
    property bool nupdate: false
    property bool notifiactionSE: false
    property bool notifiactionB: false
    //property bool notifiactionSP: false
    property bool generalfault: false
    property bool limitedpower: false
    property int batterytemp: 25
    property int batterycharge: 50
    property bool electricalfault: false
    //property bool regenerativebraking: false
//    property int tire1: 27
//    property int tire2: 27
//    property int tire3: 27
//    property int tire4: 27
 FontLoader { id:aldo ; source: "AldotheApache.ttf" }


// -------buttons for test----------
 // -------buttons for test----------
 Button{
     height: 50
     width: 50
     text: "lp"
     x:100
     y:170
     onClicked: limitedpower=true;

 }
 Button{
     height: 50
     width: 50
     text: "sett"
     x:100
     y:230
     onClicked: settingsfault=true;

 }
 Button{
     height: 50
     width: 50
     text: "gf"
     x:100
     y:290
     onClicked:{ generalfault=true;

     }

 }
 Button{
     height: 50
     width: 50
     text: "bt>30"
     x:100
     y:350
     onClicked: batterytemp=32;

 }
 Button{
     height: 50
     width: 50
     text: "bch<10"
     x:100
     y:410
     onClicked: batterycharge=9;

 }
 Button{
     height: 50
     width: 50
     text: "nu"
     x:100
     y:470
     onClicked: nupdate=true;

 }
 // f4==1 || f2==1 || f3==1 || f5==1 || f6==1 || f7==1 || f8==1
 // f4==0 && f2==0 && f3==0 && f5==0 && f6==0 && f7==0 && f8==0
 // ------------batteryfaults----------------
 onBatterychargeChanged: {
     if(batterycharge<=10 ){
         notifiactionB=true;
         f1=1;
         lb.opacity=1;
         if((flags-f1)==1){
          b=1;
          lb.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the battery charge percentage is lower than 10% .";
             sol1="please recharge your battery";
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         } else if((flags-f1)==0){
             b=0;
          lb.x=800+(24*b);
             yvalue=0;
             not.start();
             ind=true;
             topic.text="Warning: the battery charge percentage is lower than 10% .";
             sol="please recharge your battery";
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f1)==2){
             b=2;
          lb.x=800+(24*b);
             yvalue=0;
             not.start();
             ind=true;
             topic.text="Warning: the battery charge percentage is lower than 10% ."
             sol="please recharge your battery";
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f1)==3){
             b=3;
          lb.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the battery charge percentage is lower than 10% .";
             sol1="please recharge your battery";
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         } else if ((flags-f1)==4){
             b=4;
          lb.x=800+(24*b);
             yvalue=0;
             not.start();
             ind=true;
             topic.text="Warning: the battery charge percentage is lower than 10% ."
             sol="please recharge your battery";
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";

         } else if ((flags-f1)==5){
             b=5;
          lb.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the battery charge percentage is lower than 10% .";
             sol1="please recharge your battery";
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         } else if ((flags-f1)==6){
             b=6;
          lb.x=800+(24*b);
             yvalue=0;
             not.start();
             ind=true;
             topic.text="Warning: the battery charge percentage is lower than 10% ."
             sol="please recharge your battery";
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if ((flags-f1)==7){
             b=7;
          lb.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the battery charge percentage is lower than 10% .";
             sol1="please recharge your battery";
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         }

    } else if(batterycharge>10) {
       //  notifiactionB=false;
         f1=0;
         lb.opacity=0;
     }
 }
 // f4==1 || f1==1 || f3==1 || f5==1 || f6==1 || f7==1 || f8==1
 //f4==0 && f1==0 && f3==0 && f5==0 && f6==0 && f7==0 && f8==0
 onBatterytempChanged: {
     if(batterytemp<15){
         notifiactionB=true;
         f2=1;
         bt.opacity=1;
         if((flags-f2)==1){
          b=1;
          bt.x=800+(24*b);
              yvalue=105;
             not2.start();
             ind2=true;
             topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         } else if((flags-f2)==0){
             b=0;
          bt.x=800+(24*b);
              yvalue=0;
             not.start();
             ind=true;
             topic.text="warning: there is a problem in the battery temperature! ";
             sol="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==2){
             b=2;
          bt.x=800+(24*b);
             yvalue=0;
            not.start();
            ind=true;
            topic.text="warning: there is a problem in the battery temperature! ";
            sol="Your battery temperature is lower than the allowed
    efficient limit and this will affect on your car performance!

    PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==3){
             b=3;
          bt.x=800+(24*b);
             yvalue=105;
            not2.start();
            ind2=true;
            topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         } else if((flags-f2)==4){
             b=4;
          bt.x=800+(24*b);
             yvalue=0;
            not.start();
            ind=true;
            topic.text="warning: there is a problem in the battery temperature! ";
            sol="Your battery temperature is lower than the allowed
    efficient limit and this will affect on your car performance!

    PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==5){
             yvalue=105;
            not2.start();
            ind2=true;
            topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         } else if((flags-f2)==6){
             b=6;
          bt.x=800+(24*b);
             yvalue=0;
            not.start();
            ind=true;
            topic.text="warning: there is a problem in the battery temperature! ";
            sol="Your battery temperature is lower than the allowed
    efficient limit and this will affect on your car performance!

    PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==7){
             b=7;
          bt.x=800+(24*b);
             yvalue=105;
            not2.start();
            ind2=true;
            topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         }

         //f4==1 || f1==1 || f3==1 || f5==1 || f6==1 || f7==1 || f8==1
         //f4==0 && f1==0 && f3==0 && f5==0 && f6==0 && f7==0 && f8==0
     } else if(batterytemp>30){
         notifiactionB=true;
         f2=1;
         bt.opacity=1;
         if((flags-f2)==1){
          b=1;
          bt.x=800+(24*b);
              yvalue=105;
             not2.start();
             ind2=true;
             topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         } else if((flags-f2)==0){
             b=0;
          bt.x=800+(24*b);
              yvalue=0;
             not.start();
             ind=true;
             topic.text="warning: there is a problem in the battery temperature! ";
             sol="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             sol="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==2){
             b=2;
          bt.x=800+(24*b);
             yvalue=0;
            not.start();
            ind=true;
            topic.text="warning: there is a problem in the battery temperature! ";
            sol="Your battery temperature is lower than the allowed
    efficient limit and this will affect on your car performance!

    PLEASE check the nearest dealer to fix the problem" ;
             sol="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==3){
             b=3;
             yvalue=105;
            not2.start();
            ind2=true;
            topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
        } else if((flags-f2)==0){
          bt.x=800+(24*b);
         } else if((flags-f2)==4){
             b=4;
          bt.x=800+(24*b);
             yvalue=0;
            not.start();
            ind=true;
            topic.text="warning: there is a problem in the battery temperature! ";
            sol="Your battery temperature is lower than the allowed
    efficient limit and this will affect on your car performance!

    PLEASE check the nearest dealer to fix the problem" ;
             sol="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==5){
             b=5;
          bt.x=800+(24*b);
             yvalue=105;
            not2.start();
            ind2=true;
            topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
        } else if((flags-f2)==0){
         } else if((flags-f2)==6){
             b=6;
          bt.x=800+(24*b);
             yvalue=0;
            not.start();
            ind=true;
            topic.text="warning: there is a problem in the battery temperature! ";
            sol="Your battery temperature is lower than the allowed
    efficient limit and this will affect on your car performance!

    PLEASE check the nearest dealer to fix the problem" ;
             sol="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon.scale=0.8;
             notname.text="BATTERY";
         } else if((flags-f2)==7){
             b=7;
          bt.x=800+(24*b);
             yvalue=105;
            not2.start();
            ind2=true;
            topic1.text="warning: there is a problem in the battery temperature! ";
             sol1="Your battery temperature is lower than the allowed
     efficient limit and this will affect on your car performance!

     PLEASE check the nearest dealer to fix the problem" ;
             noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
             noticon1.scale=0.8;
             notname1.text="BATTERY";
         }
 //        topic.text="Warning: there is a problem in the battery temperature!" ;
 //        topic1.text="Warning: there is a problem in the battery temperature!" ;
 //        sol="Your battery temperature is above its allowed effifcient
 //limit which will affect on your car perfomance!

 //please stop and switch the car off for a while . "
     } else if(15<=batterytemp<=30)  {
       //  notifiactionB=false;
         f2=0;
         bt.opacity=0;
     }
 }

 onNotifiactionBChanged: {
     if(notifiactionB==true){
 //        if(flags==0&&ind==false){
 //           ind=true;
 //           not.start();
 //            yvalue=0;
 //        if(ind==true){
 //           noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
 //           noticon.scale=0.8;
 //           notname.text="BATTERY";
       //  } else if(ind==true&&flags==2){
 //            ind2=true;
 //            not2.start();
 //            yvalue=105;
 //          } else if(ind2==true){
 //            noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
 //            noticon1.scale=0.8;
 //            notname1.text="BATTERY";
 //        }
       //  }

       }
     else if(notifiactionB==false){

     }
 }
 //onIndChanged: {
 //    if(notifiactionB==true && ind){

 //    }
 //}

 //onTire1Changed: {
 //    if(tire1<26) {
 //        notifiactionSE=true;
 //        f3=1;
 //        topic.text="warning: there is a problem in the tires pressure system!  ";
 //        sol="the front left tire pressure is getting lower than
 //its specific safe limit.";
 //    } else{
 //        f3=0;
 //        //notifiactionSE=false;
 //    }
 //}
 //    onTire2Changed: {
 //        if(tire2<26) {
 //            notifiactionSE=true;
 //            //f3=1;
 //            topic.text="warning: there is a problem in the tires pressure system!  ";
 //            sol="the front right tire pressure is getting lower than
 //    its specific safe limit.";
 //        } else{
 //           // f3=0;
 //            //notifiactionSE=false;
 //        }
 //    }
 //        onTire3Changed: {
 //            if(tire3<26) {
 //                notifiactionSE=true;
 //               // f3=1;
 //                topic.text="warning: there is a problem in the tires pressure system!  ";
 //                sol="the back left tire pressure is getting lower than
 //        its specific safe limit.";
 //            } else{
 //                //f3=0;
 //                //notifiactionSE=false;
 //            }
 //        }
 //            onTire4Changed: {
 //                if(tire4<26) {
 //                    notifiactionSE=true;
 //                    f3=1;
 //                    topic.text="warning: there is a problem in the tires pressure system!  ";
 //                    sol="the back right tire pressure is getting lower than
 //            its specific safe limit.";
 //                } else{
 //                    f3=0;
 //                    //notifiactionSE=false;
 //                }
 //            }

 // ----------settingsfaults------------
 onSettingsfaultChanged: {
     if(settingsfault){
         notifiactionSE=true;
         f7=1;
         sf.opacity=1;
         if((flags-f7)==1){
          b=1;
          sf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: a problem has occured in settings! " ;
             sol1="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f7)==0){
             b=0;
          sf.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: a problem has occured in settings! " ;
             sol="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f7)==2){
             b=2;
          sf.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: a problem has occured in settings! " ;
             sol="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f7)==3){
             b=3;
          sf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: a problem has occured in settings! " ;
             sol1="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
     } else if((flags-f7)==4){
             b=4;
          sf.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: a problem has occured in settings! " ;
             sol="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f7)==5){
             b=5;
          sf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: a problem has occured in settings! " ;
             sol1="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
     } else if((flags-f7)==6){
             b=6;
          sf.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: a problem has occured in settings! " ;
             sol="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f7)==7){
             b=7;
          sf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: a problem has occured in settings! " ;
             sol1="There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
     }
 //        topic.text="Warning: a problem has occured in settings! " ;
 //        sol="There's a problem with the electrical system,
 //the battery, the traction system, charging issues or etc.

 //please follow the instructions to fix the problem ";
 } else if(settingsfault==false) {
         f7=0;
         sf.opacity=0;
     }
 }
 onNupdateChanged: {
     if(nupdate){
         notifiactionSE=true;
         f8=1;
         nu.opacity=1;
         if((flags-f8)==1){
          b=1;
          nu.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="a new update is available for your system " ;
           sol1="there is a new update is available for your system .

 click upadte to enjoy the new features!";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f8)==0){
             b=0;
          nu.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="a new update is available for your system " ;
             sol="there is a new update is available for your system .
     click upadte to enjoy the new features!";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f8)==2){
             b=2;
          nu.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="a new update is available for your system " ;
             sol="there is a new update is available for your system .
     click upadte to enjoy the new features!";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f8)==3){
             b=3;
          nu.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="a new update is available for your system " ;
             sol1="there is a new update is available for your system .

   click upadte to enjoy the new features!";
               noticon1.source="qrc:/img/images-removebg-preview.png";
               notname1.text="SETTINGS";
               noticon1.scale=1;
     } else if((flags-f8)==4){
             b=4;
          nu.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="a new update is available for your system " ;
             sol="there is a new update is available for your system .
     click upadte to enjoy the new features!";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f8)==5){
             b=5;
          nu.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="a new update is available for your system " ;
             sol1="there is a new update is available for your system .

   click upadte to enjoy the new features!";
               noticon1.source="qrc:/img/images-removebg-preview.png";
               notname1.text="SETTINGS";
               noticon1.scale=1;
     } else if((flags-f8)==6){
             b=6;
          nu.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="a new update is available for your system " ;
             sol="there is a new update is available for your system .
     click upadte to enjoy the new features!";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
     } else if((flags-f8)==7){
             b=7;
          nu.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="a new update is available for your system " ;
             sol1="there is a new update is available for your system .

   click upadte to enjoy the new features!";
               noticon1.source="qrc:/img/images-removebg-preview.png";
               notname1.text="SETTINGS";
               noticon1.scale=1;
     }
 //        topic.text="a new update is available for your system " ;
 //        sol="there is a new update is available for your system .
 //click upadte to enjoy the new features!";
 } else if(settingsfault==false) {
         f8=0;
         nu.opacity=0;
     }
 }

 onGeneralfaultChanged: {
     if(generalfault){
     notifiactionSE=true;
         f4=1;
         gf.opacity=1;
         if((flags-f4)==1){
          b=1;
          gf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there is a genral fault has occured! " ;
             sol1="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f4)==0){
             b=0;
          gf.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there is a genral fault has occured! " ;
             sol="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         }  else if((flags-f4)==2){
             b=2;
          gf.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there is a genral fault has occured! " ;
             sol="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         }  else if((flags-f4)==3){
             b=3;
          gf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there is a genral fault has occured! " ;
             sol1="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         }  else if((flags-f4)==4){
             b=4;
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there is a genral fault has occured! " ;
             sol="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
          gf.x=800+(24*b);
         }  else if((flags-f4)==5){
             b=5;
          gf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there is a genral fault has occured! " ;
             sol1="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         }  else if((flags-f4)==6){
             b=6;
          gf.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there is a genral fault has occured! " ;
             sol="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         }   else if((flags-f4)==7){
             b=7;
          gf.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there is a genral fault has occured! " ;
             sol1="general fault: There's a problem with the electrical system,
     the battery, the traction system, charging issues or etc.

     please follow the instructions to fix the problem ";
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         }

 //        topic.text="Warning: there is a genral fault has occured! " ;
 //        sol="general fault: There's a problem with the electrical system,
 //the battery, the traction system, charging issues or etc.

 //please follow the instructions to fix the problem ";
     } else if(generalfault==false){
        f4=0;
         gf.opacity=0;
        //notifiactionSE=false;
     }


 }
 onElectricalfaultChanged: {
     if(electricalfault){
         notifiactionSE=true;
         f5=1;
         ef.opacity=1;
         if((flags-f5)==1){
          b=1;
          ef.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there's an electrical fault in your system! ";
             sol1="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f5)==0){
             b=0;
          ef.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there's an electrical fault in your system! ";
             sol="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         }  else if((flags-f5)==2){
             b=2;
          ef.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there's an electrical fault in your system! ";
             sol="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         }  else if((flags-f5)==3){
             b=3;
          ef.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there's an electrical fault in your system! ";
             sol1="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f5)==4){
             b=4;
          ef.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there's an electrical fault in your system! ";
             sol="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         } else if((flags-f5)==5){
             b=5;
          ef.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there's an electrical fault in your system! ";
             sol1="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f5)==6){
             b=6;
          ef.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: there's an electrical fault in your system! ";
             sol="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         } else if((flags-f5)==7){
             b=7;
          ef.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: there's an electrical fault in your system! ";
             sol1="there is a fault in the electrics with the battery , the wiring ,
     or motor which needs professional help.

     please head to the nearest dealer to check the problem. "
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         }
 //        topic.text="Warning: there's an electrical fault in your system! ";
 //        sol="there is a fault in the electrics with the battery , the wiring ,
 //or motor which needs professional help.

 //please head to the nearest dealer to check the problem. "
     } else{
         f5=0;
         ef.opacity=0;
          //notifiactionSE=false;
     }
 }
 onLimitedpowerChanged: {
     if(limitedpower){
         notifiactionSE=true;
         f6=1;
         limpower.opacity=1;
         if((flags-f6)==1){
          b=1;
          limpower.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the car is getting into limited power mode!";
             sol1="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f6)==0){
             b=0;
          limpower.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: the car is getting into limited power mode!";
             sol="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         } else if((flags-f6)==2){
             b=2;
          limpower.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: the car is getting into limited power mode!";
             sol="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         } else if((flags-f6)==3){
             b=3;
          limpower.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the car is getting into limited power mode!";
             sol1="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f6)==4){
             b=4;
          limpower.x=800+(24*b);
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: the car is getting into limited power mode!";
             sol="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
         } else if((flags-f6)==5){
             b=5;
          limpower.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the car is getting into limited power mode!";
             sol1="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         } else if((flags-f6)==6){
             b=6;
             yvalue=0;
             not.start();
            ind=true;
             topic.text="Warning: the car is getting into limited power mode!";
             sol="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon.source="qrc:/img/images-removebg-preview.png";
             notname.text="SETTINGS";
             noticon.scale=1;
          limpower.x=800+(24*b);
         } else if((flags-f6)==7){
             b=7;
          limpower.x=800+(24*b);
             yvalue=105;
             not2.start();
            ind2=true;
             topic1.text="Warning: the car is getting into limited power mode!";
             sol1="there's a problem either in the electrical system,the battery
     power or temperature. the car needs to rest for a while.

     please you need to head the car straight to the garage."
             noticon1.source="qrc:/img/images-removebg-preview.png";
             notname1.text="SETTINGS";
             noticon1.scale=1;
         }

 //        topic.text="Warning: the car is getting into limited power mode!";
 //        sol="there's a problem either in the electrical system,the battery
 //power or temperature. the car needs to rest for a while.

 //please you need to head the car straight to the garage."
     } else if(limitedpower==false){
         limpower.opacity=0;
         f6=0;
 }
 }

 onNotifiactionSEChanged: {
     if(notifiactionSE==true){

 //            //ind=true;
 //        if(ind==true){
 //            noticon.source="qrc:/img/images-removebg-preview.png";
 //            notname.text="SETTINGS";
 //            noticon.scale=1;
 //        } else if(ind2==true){
 //        noticon1.source="qrc:/img/images-removebg-preview.png";
 //        notname1.text="SETTINGS";
 //        noticon1.scale=1;
            // not.start();
             //yvalue=0;
       //  }
     }
     else if(notifiactionSE==false)
     {

       // not1.start();
         //not3.start();
     }
 }
 Rectangle{
     id:noti1
     height: 100
     width: 500
     radius: 25
     color: '#06c7f2'
     opacity: 0.6
     x:710
     y:-1000
 MouseArea{
     id:details1
     anchors.fill: parent
     onClicked: {
         noti1.height=160;
         topic1.text=sol1;
         offnot1.interval=7000;
         noticon1.x=945;
         notname1.opacity=0;
         noticon1.scale=1;
         noticon1.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";

     }
 }
 }

  //-----------noti icons----------
 Image {
     id: limpower
     source: "qrc:/img/turtle.png"
     opacity: 0
    // x:800+24
     y:2
     height: 20
     width: 20
  MouseArea{
      id:limpower1
      anchors.fill: parent
      onClicked: {
          limitedpower=true
          //notifiactionSE=true;
          noti.height=160;
          topic.text=sol;
          offnot.interval=7000;
          noticon.x=945;
          notname.opacity=0;
          noticon.scale=1;
          noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
      }
  }
 }
 Image {
     id: gf
     source: "qrc:/img/wren-charge.png"
     //x:800
     y:2
     height: 20
     width: 20
     opacity: 0
     MouseArea{
         id:gf1
         anchors.fill: parent
         onClicked: {
             generalfault=true;
             //notifiactionSE=true;
             noti.height=160;
             topic.text=sol;
             offnot.interval=7000;
             noticon.x=945;
             notname.opacity=0;
             noticon.scale=1;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
         }
     }
 }
 Image {
     id: lb
     source: "qrc:/img/low-battery-on.png"
     height: 20
     width: 20
     opacity: 0
     y:2
     MouseArea{
         id:lb1
         anchors.fill: parent
         onClicked: {
             batterycharge=9
            // notifiactionB=true;
             noti.height=160;
             topic.text=sol;
             offnot.interval=7000;
             noticon.x=945;
             notname.opacity=0;
             noticon.scale=1;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
         }
     }
 }
 Image {
     id: bt
     source: "qrc:/img/battery-Alarm.png"
     height: 20
     width: 20
     opacity: 0
     y:2
     MouseArea{
         id:bt1
         anchors.fill: parent
         onClicked: {
             batterytemp=35;
             //notifiactionB=true;
             noti.height=160;
             topic.text=sol;
             offnot.interval=7000;
             noticon.x=945;
             notname.opacity=0;
             noticon.scale=1;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
         }
     }
 }
 Image {
     id: ef
     source: "qrc:/img/car-EF.png"
     height: 20
     width: 20
     opacity: 0
     y:2
     MouseArea{
         id:ef1
         anchors.fill: parent
         onClicked: {
             notifiactionSE=true;
             noti.height=160;
             topic.text=sol;
             offnot.interval=7000;
             noticon.x=945;
             notname.opacity=0;
             noticon.scale=1;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
         }
     }
 }
 Image {
     id: sf
     source: "qrc:/img/gear.png"
     height: 20
     width: 20
     opacity: 0
     y:2
     MouseArea{
         id:sf1
         anchors.fill: parent
         onClicked: {
             notifiactionSE=true;
             noti.height=160;
             topic.text=sol;
             offnot.interval=7000;
             noticon.x=945;
             notname.opacity=0;
             noticon.scale=1;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
         }
     }
 }
 Image {
     id: nu
     source: "qrc:/img/system-update.png"
     height: 20
     width: 20
     opacity: 0
     y:2
     MouseArea{
         id:nu1
         anchors.fill: parent
         onClicked: {
             notifiactionSE=true;
             noti.height=160;
             topic.text=sol;
             offnot.interval=7000;
             noticon.x=945;
             notname.opacity=0;
             noticon.scale=1;
             noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";
         }
     }
 }

 Image {
     id: noticon1
     source: ""
     height:29
     width: 29
     x:723
     y:-1000
     //scale:0.12
 }
 Text {
     id: notname1
     text: qsTr("")
     font.family:aldo.name
     font.pixelSize: 16
     font.bold: false
     x:758
     y:-1000
     color: "white"
 }
 Text {
     id: topic1
     text: qsTr("")
     font.family:aldo.name
     font.pixelSize: 16
     font.bold: false
     x:730
     y:-1000
     color: "white"
 }

 //----------notibattern----------
 Rectangle{
     id:noti
     height: 100
     width: 500
     radius: 25
     color: '#06c7f2'
     opacity: 0.6
     x:710
     y:-1000
 MouseArea{
     id:details
     anchors.fill: parent
     onClicked: {
         noti.height=160;
         topic.text=sol;
         offnot.interval=7000;
         noticon.x=945;
         notname.opacity=0;
         noticon.scale=1;
         noticon.source="qrc:/img/warning-icon.svg.med-removebg-preview.png";

     }
 }
 }
 Image {
     id: noticon
     source: ""
     height:29
     width: 29
     x:723
     y:-1000
     //scale:0.12
 }
 Text {
     id: notname
     text: qsTr("")
     font.family:aldo.name
     font.pixelSize: 16
     font.bold: false
     x:758
     y:-1000
     color: "white"
 }
 Text {
     id: topic
     text: qsTr("please enter your specific notification/n
 here")
     font.family:aldo.name
     font.pixelSize: 16
     font.bold: false
     x:730
     y:-1000
     color: "white"
 }


 //Timer{
 //    id:time
 //    interval: 3500
 //    running: ind
 //    repeat: false
 //    onTriggered: ind=0;
 //}

 Timer{
     id:offnot
     interval: 5000
     running: ind
     repeat: false
     onTriggered: {
         ind=false;
         notifiactionB=ind;
         notifiactionSE=ind;
         generalfault=false;
         batterycharge=25;
         batterytemp=25;
         noti.height=100;
         noticon.x=723;
         notname.opacity=1;
         limitedpower=false;
         not1.start();

     }

 }
 Timer{
     id:offnot1
     interval: 5000
     running: ind2
     repeat: false
     onTriggered: {
         ind2=false;
         notifiactionB=ind2;
         notifiactionSE=ind2;
         generalfault=ind2;
         batterycharge=25;
         batterytemp=25;
         noti1.height=100;
         noticon1.x=723;
         notname1.opacity=1;
         limitedpower=false;
         not3.start();

     }
 }

 ParallelAnimation{
     id:not

     NumberAnimation {
         target: noti
         property: "y"
         from:-1000
         to:(25+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: noticon
         property: "y"
         from:-1000
         to:(35+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: notname
         property: "y"
         from:-1000
         to:(38+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: topic
         property: "y"
         from:-1000
         to:(66+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
 }
 ParallelAnimation{
     id:not1
     NumberAnimation {
         target: noti
         property: "y"
         from:(25+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: noticon
         property: "y"
         from:(35+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: notname
         property: "y"
         from:(38+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: topic
         property: "y"
         from:(66+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
 }
 ParallelAnimation{
     id:not2

     NumberAnimation {
         target: noti1
         property: "y"
         from:-1000
         to:(25+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: noticon1
         property: "y"
         from:-1000
         to:(35+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: notname1
         property: "y"
         from:-1000
         to:(38+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: topic1
         property: "y"
         from:-1000
         to:(66+yvalue)
         duration: 200
         easing.type: Easing.InOutQuad
     }
 }
 ParallelAnimation{
     id:not3
     NumberAnimation {
         target: noti1
         property: "y"
         from:(25+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: noticon1
         property: "y"
         from:(35+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: notname1
         property: "y"
         from:(38+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
     NumberAnimation {
         target: topic1
         property: "y"
         from:(66+yvalue)
         to:-1000
         duration: 200
         easing.type: Easing.InOutQuad
     }
 }
 }

