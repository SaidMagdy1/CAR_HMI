import QtQuick 2.15
import QtQuick.Controls 2.15



Item {
    id: header
    anchors.fill: parent

  property int pages: 0
  property int w: 0






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
//         left: caricon.right
//         leftMargin: 30
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
//         right: caricon.left
//         rightMargin: 30
    }

    MouseArea{
        anchors.fill: parent
        onClicked:{ mainLoader.source= "MainPage.qml"
            pages=0
            mainPageiconn.start();
        }
    }
}

//    Notification{
//        id:notification
//    }


Footer{
    id : footer
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 15
}
//    ChartView {
//       width: 400
//        height: 300
//        theme: ChartView.ChartThemeBrownSand
//        antialiasing: true

//        PieSeries {
//            id: pieSeries
//            PieSlice { label: "eaten"; value: 94.9 }
//            PieSlice { label: "not yet eaten"; value: 5.1 }
//        }
//    }
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


