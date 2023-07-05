import QtQuick 2.15
import QtQuick.Controls 2.15



Item {
    id: header
    anchors.fill: parent


  property bool pageRight: mainWindow.pageRight      // to travel between the page
  property bool pageLeft: mainWindow.pageLeft

  property int pages: 0      //indcation to the displayed page
  property int w: 0




    onPageRightChanged: {
        if(pageRight && !pageLeft){

            if( pages === 0){
                mainLoader.source = "NavigationPage.qml" ;
                            pages=2 ;
                            navigationiconn.start();
                console.log("if2");
            }
            else if(pages === 2){
                mainLoader.source= "CarPage.qml"
                            pages=1
                            cariconn.start();

            }
            else if( pages === 1){
                mainLoader.source= "BatteryPage.qml"
                            pages=3
                            batteryiconn.start();

            }
            else if (pages === 3){
                mainLoader.source= "MainPage.qml"
                           pages=0
                           mainPageiconn.start();

            }
        }
    }


    onPageLeftChanged: {
        if(pageLeft && !pageRight){
            if(pages === 0){
                mainLoader.source= "BatteryPage.qml"
                            pages=3
                            batteryiconn.start();
            }
            else if(pages === 2){
                mainLoader.source= "MainPage.qml"
                           pages=0
                           mainPageiconn.start();

            }
            else if( pages === 1){
                mainLoader.source= "NavigationPage.qml"
                            pages=2
                            navigationiconn.start();

            }
            else if (pages === 3){
                mainLoader.source= "CarPage.qml"
                            pages=1
                            cariconn.start();
            }
        }
    }




Image {
    id: caricon
    //x:parent.width/2 + caricon.width/2

    height: pages==1 ? parent.height/14 :parent.height/16
    //width: height
    source:pages==1 ? "qrc:/img/car-page.on.png" :"qrc:/img/car-page.off.png"
    x: 828

    fillMode: Image.PreserveAspectFit
    anchors{
     top: parent.top
     topMargin: 14

    }

    MouseArea{
        anchors.fill: parent
        onClicked:{ mainLoader.source= "CarPage.qml"
            pages=1
            cariconn.start();
        }
    }
}

Image {
    id: navigationicon

    height:pages==2 ? parent.height/20 : parent.height/25
    source: pages==2  ? "qrc:/img/navigation-page-on.png" : "qrc:/img/navigation-page-off.png"
    x:1022
    fillMode: Image.PreserveAspectFit
    anchors{
     top: parent.top
     topMargin: 20

    }

    MouseArea{
        anchors.fill: parent
        onClicked:{ mainLoader.source= "NavigationPage.qml"
            pages=2
            navigationiconn.start();
        }
    }
}
Image {
    id: batteryicon


    height: pages==3 ? parent.height/14 :parent.height/16
    source:pages==3 ? "qrc:/img/battery-page.on.png" :"qrc:/img/battery-page.off.png"
    x:895
    fillMode: Image.PreserveAspectFit
    anchors{
     top: parent.top
     topMargin: 15
//         right: mainPageicon.left
//         rightMargin: 30
    }

    MouseArea{
        anchors.fill: parent
        onClicked:{ mainLoader.source= "BatteryPage.qml"
            pages=3
            batteryiconn.start();
        }
    }
}

Image {
    id: mainPageicon


    height:pages==0 ? parent.height/20 : parent.height/16
    x:962

    source: pages==0 ? "qrc:/img/main-page-on.png" :"qrc:/img/main-page-off.png"

    fillMode: Image.PreserveAspectFit
    anchors{
     top: parent.top
     topMargin: pages==0 ? 20 : 15

    }

    MouseArea{
        anchors.fill: parent
        onClicked:{ mainLoader.source= "MainPage.qml"
            pages=0
            mainPageiconn.start();
        }
    }
}


ParallelAnimation{
id:cariconn
NumberAnimation {
    target: caricon
    property: "x"
    from:caricon.x
    to:957
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: batteryicon
    property: "x"
    from: batteryicon.x
    to:1022
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: navigationicon
    property: "x"
    from: navigationicon.x
    to:895
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: mainPageicon
    property: "x"
    from:mainPageicon.x
    to:828
    duration: 500
    easing.type: Easing.InOutQuad
}
}
ParallelAnimation{
id:batteryiconn
NumberAnimation {
    target: batteryicon
    property: "x"
    from:batteryicon.x
    to:962
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: mainPageicon
    property: "x"
    from:mainPageicon.x
    to:1022
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: caricon
    property: "x"
    from:caricon.x
    to:895
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: navigationicon
    property: "x"
    from: navigationicon.x
    to: 833
    duration: 500
    easing.type: Easing.InOutQuad
}
}
ParallelAnimation{
id:navigationiconn
NumberAnimation {
    target: navigationicon
    property: "x"
    from:navigationicon.x
    to:962
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: caricon
    property: "x"
    from:caricon.x
    to:1022
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target:mainPageicon
    property: "x"
    from:mainPageicon.x
    to:895
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target:batteryicon
    property: "x"
    from:batteryicon.x
    to: 828
    duration: 500
    easing.type: Easing.InOutQuad
}

}
ParallelAnimation{
id:mainPageiconn
NumberAnimation {
    target: mainPageicon
    property: "x"
    from:mainPageicon.x
    to:962
    duration: 500
    easing.type: Easing.InOutQuad
}

NumberAnimation {
    target: batteryicon
    property: "x"
    from:batteryicon.x
    to:895
    duration: 500
    easing.type: Easing.InOutQuad
}

 NumberAnimation {
    target:navigationicon
    property: "x"
    from:navigationicon.x
    to:1022
    duration: 500
    easing.type: Easing.InOutQuad
 }

NumberAnimation {
    target:caricon
    property: "x"
    from:caricon.x
    to:828
    duration: 500
    easing.type: Easing.InOutQuad
 }
 }
}


