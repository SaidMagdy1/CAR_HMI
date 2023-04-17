import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

Entity {
    id: rootEntity


    Camera {
        id: camera

        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        nearPlane : 0.1
        farPlane : 1000.0
        position: Qt.vector3d( 20.0, 20.0, 45.0 )
        upVector: Qt.vector3d( 0.0, 0.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 7.0, 0.0 )
    }

  FirstPersonCameraController { camera: camera }

    components: [
        RenderSettings {
            activeFrameGraph: ForwardRenderer {
                camera: camera
                clearColor: "transparent"
            }
        },
        InputSettings {}
    ]

   GEntity {}
}

