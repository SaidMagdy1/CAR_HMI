import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id : root
    x:760

    width: parent.width/5
    height:parent.height/8.5
    radius:50
    anchors{
        top: parent.top

    }

    gradient: Gradient {
        GradientStop { position: 1.0; color: "black" }  // "lightsteelblue"
        GradientStop { position: 0.0; color: "blue" }
    }
}
