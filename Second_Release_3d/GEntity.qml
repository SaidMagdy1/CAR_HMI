import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0



Entity {
    id: gearEntity
     property int angle: 45

    Button {

        text: "Ok"
        onClicked: parent.angle=180

    }

    Mesh {
        id: gearMesh
        source: "qrc:/Avent_sport.obj"
    }

    Transform {
        id: gearTransform

       scale3D: Qt.vector3d(3,5,4)
    //    rotationY: angle
        PropertyAnimation on rotationY{
            duration: 5000
            loops: Animation.Infinite
            from:  angle//45
            to :404

        }


        //rotation:fromAxisAndAngle(Qt.vector3d(0, 1, 0),angle)


    }

    PhongMaterial {
        id: gearMaterial
    }

    Entity {
        id: torusEntity
        components: [ gearMesh, gearTransform, gearMaterial ]
    }

}
