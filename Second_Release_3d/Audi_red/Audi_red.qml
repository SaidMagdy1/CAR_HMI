import QtQuick 2.15
import QtQuick3D 1.15

Node {
    // Materials
    // end of Materials
    property int doorAngle: 0
    property int cabotAngle: 0
    property real frontLamps: 0
     property real backLamps: 0
    property real tyreScale: 1
    Node {
        id: rootNode
        x: -1566.647
        y: -0
        z: -997.51843
        eulerRotation.z: 0.00001
        eulerRotation.y: -48.60556
        eulerRotation.x: 0



        Node {
            id: model
            Node {
                id: group1
                Node {
                    id: group2
                    Node {
                        id: group3
                        Model {
                            id: mesh1
                            source: "meshes/mesh1.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group4
                        Model {
                            id: mesh2
                            source: "meshes/mesh2.mesh"
                            materials: [
                                metal_1_material
                            ]
                        }
                    }
                    Node {
                        id: group5
                        Model {
                            id: mesh3
                            source: "meshes/mesh3.mesh"
                            scale: Qt.vector3d(tyreScale,1,1)
                            materials: [
                                tyre_material
                            ]
                        }
                    }
                    Node {
                        id: group6
                        Model {
                            id: mesh4
                            source: "meshes/mesh4.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group7
                        Model {
                            id: mesh5
                            source: "meshes/mesh5.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group8
                        Model {
                            id: mesh6
                            source: "meshes/mesh6.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group9
                        Model {
                            id: mesh7
                            source: "meshes/mesh7.mesh"
                            materials: [
                                rims_1_material
                            ]
                        }
                    }
                    Node {
                        id: group10
                        Model {
                            id: mesh8
                            source: "meshes/mesh8.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                }
                Node {
                    id: group11
                    Node {
                        id: group12
                        Model {
                            id: mesh9
                            source: "meshes/mesh9.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group13
                        Model {
                            id: mesh10
                            source: "meshes/mesh10.mesh"
                            materials: [
                                metal_1_material
                            ]
                        }
                    }
                    Node {
                        id: group14
                        Model {
                            id: mesh11
                            source: "meshes/mesh11.mesh"
                            materials: [
                                tyre_material
                            ]
                        }
                    }
                    Node {
                        id: group15
                        Model {
                            id: mesh12
                            source: "meshes/mesh12.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group16
                        Model {
                            id: mesh13
                            source: "meshes/mesh13.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group17
                        Model {
                            id: mesh14
                            source: "meshes/mesh14.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group18
                        Model {
                            id: mesh15
                            source: "meshes/mesh15.mesh"
                            materials: [
                                rims_1_material
                            ]
                        }
                    }
                    Node {
                        id: group19
                        Model {
                            id: mesh16
                            source: "meshes/mesh16.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                }
                Node {
                    id: group20
                    Node {
                        id: group21
                        Model {
                            id: mesh17
                            source: "meshes/mesh17.mesh"
                            materials: [
                                interior_roof_material
                            ]
                        }
                    }
                    Node {
                        id: group22
                        Node {
                            id: group23
                            Model {
                                id: mesh18
                                source: "meshes/mesh18.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group24
                            Model {
                                id: mesh19
                                source: "meshes/mesh19.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group25
                            Model {
                                id: mesh20
                                source: "meshes/mesh20.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group26
                            Model {
                                id: mesh21
                                source: "meshes/mesh21.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group27
                            Model {
                                id: mesh22
                                source: "meshes/mesh22.mesh"
                                materials: [
                                    tail_light_red_2_material
                                ]
                            }
                        }
                        Node {
                            id: group28
                            Model {
                                id: mesh23
                                source: "meshes/mesh23.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group29
                            Model {
                                id: mesh24
                                source: "meshes/mesh24.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group30
                            Model {
                                id: mesh25
                                source: "meshes/mesh25.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group31
                            Model {
                                id: mesh26
                                source: "meshes/mesh26.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group32
                            Model {
                                id: mesh27
                                source: "meshes/mesh27.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group33
                            Model {
                                id: mesh28
                                source: "meshes/mesh28.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group34
                            Model {
                                id: mesh29
                                source: "meshes/mesh29.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group35
                            Model {
                                id: mesh30
                                source: "meshes/mesh30.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group36
                            Model {
                                id: mesh31
                                source: "meshes/mesh31.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group37
                            Model {
                                id: mesh32
                                source: "meshes/mesh32.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group38
                            Model {
                                id: mesh33
                                source: "meshes/mesh33.mesh"
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group39
                        Node {
                            id: group40
                            Model {
                                id: mesh34
                                source: "meshes/mesh34.mesh"
                                materials: [
                                    interior_1_material
                                ]
                            }
                        }
                        Node {
                            id: group41
                            Model {
                                id: mesh35
                                source: "meshes/mesh35.mesh"
                                materials: [
                                    interior_1_material
                                ]
                            }
                        }
                        Node {
                            id: group42
                            Model {
                                id: mesh36
                                source: "meshes/mesh36.mesh"
                                materials: [
                                    interior_1_material
                                ]
                            }
                        }
                        Node {
                            id: group43
                            Model {
                                id: mesh37
                                source: "meshes/mesh37.mesh"
                                materials: [
                                    interior_1_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group44
                        Node {
                            id: group45
                            Model {
                                id: mesh38
                                source: "meshes/mesh38.mesh"
                                materials: [
                                    interior_2_material
                                ]
                            }
                        }
                        Node {
                            id: group46
                            Model {
                                id: mesh39
                                source: "meshes/mesh39.mesh"
                                materials: [
                                    interior_2_material
                                ]
                            }
                        }
                        Node {
                            id: group47
                            Model {
                                id: mesh40
                                source: "meshes/mesh40.mesh"
                                materials: [
                                    interior_2_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group48
                        Node {
                            id: group49
                            Model {
                                id: mesh41
                                source: "meshes/mesh41.mesh"
                                materials: [
                                    trim_material
                                ]
                            }
                        }
                        Node {
                            id: group50
                            Model {
                                id: mesh42
                                source: "meshes/mesh42.mesh"
                                materials: [
                                    trim_material
                                ]
                            }
                        }
                        Node {
                            id: group51
                            Model {
                                id: mesh43
                                source: "meshes/mesh43.mesh"
                                materials: [
                                    trim_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group52
                        Node {
                            id: group53
                            Model {
                                id: mesh44
                                source: "meshes/mesh44.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    glass_window_material
                                ]
                            }
                        }
                        Node {
                            id: group54
                            Model {
                                id: mesh45
                                source: "meshes/mesh45.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0

                                materials: [
                                    glass_window_material
                                ]
                            }
                        }
                        Node {
                            id: group55
                            Model {
                                id: mesh46
                                source: "meshes/mesh46.mesh"
                                materials: [
                                    glass_lamp_material
                                ]
                            }
                        }
                        Node {
                            id: group56
                            Model {
                                id: mesh47
                                source: "meshes/mesh47.mesh"
                                materials: [
                                    glass_window_material
                                ]
                            }
                        }
                        Node {
                            id: group57
                            Model {
                                id: mesh48
                                source: "meshes/mesh48.mesh"
                                opacity: frontLamps
                                materials: light_material
                            }
                        }
                        Node {
                            id: group58
                            Model {
                                id: mesh49
                                source: "meshes/mesh49.mesh"
                                //opacity: backLamps
                                materials: [
                                    glass_lamp_material
                                ]
                            }
                        }
                        Node {
                            id: group59
                            Model {
                                id: mesh50
                                source: "meshes/mesh50.mesh"
                                materials: [
                                    glass_window_material
                                ]
                            }
                        }
                        Node {
                            id: group60
                            Model {
                                id: mesh51
                                source: "meshes/mesh51.mesh"
                                materials: [
                                    glass_window_material
                                ]
                            }
                        }
                        Node {
                            id: group61
                            Model {
                                id: mesh52
                                source: "meshes/mesh52.mesh"
                                materials: [
                                    glass_projector_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group62
                        Node {
                            id: group63
                            Model {
                                id: mesh53
                                opacity: frontLamps
                                source: "meshes/mesh53.mesh"
                                materials: [
                                    light_material
                                ]
                            }
                        }
                        Node {
                            id: group64
                            Model {
                                id: mesh54
                                source: "meshes/mesh54.mesh"
                                 opacity: backLamps
                                materials: [
                                    tail_light_red_1_material
                                ]
                            }
                        }
                        Node {
                            id: group65
                            Model {
                                id: mesh55
                                source: "meshes/mesh55.mesh"
                                opacity: backLamps
                                materials: [
                                    tail_light_red_3_material
                                ]
                            }
                        }
                        Node {
                            id: group66
                            Model {
                                id: mesh56
                                opacity: backLamps
                                source: "meshes/mesh56.mesh"
                                materials: [
                                    tail_light_red_1_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group67
                        Node {
                            id: group68
                            Model {
                                id: mesh57
                                source: "meshes/mesh57.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    black_gloss_material
                                ]
                            }
                        }
                        Node {
                            id: group69
                            Model {
                                id: mesh58
                                source: "meshes/mesh58.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group70
                            Model {
                                id: mesh59
                                source: "meshes/mesh59.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group71
                            Model {
                                id: mesh60
                                source: "meshes/mesh60.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group72
                            Model {
                                id: mesh61
                                source: "meshes/mesh61.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group73
                            Model {
                                id: mesh62
                                source: "meshes/mesh62.mesh"

                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group74
                            Model {
                                id: mesh63
                                source: "meshes/mesh63.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group75
                            Model {
                                id: mesh64
                                source: "meshes/mesh64.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group76
                            Model {
                                id: mesh65
                                source: "meshes/mesh65.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group77
                            Node {
                                id: group78
                                Model {
                                    id: mesh66
                                    source: "meshes/mesh66.mesh"
                                    materials: [
                                        body_color_material
                                    ]
                                }
                            }
                            Model {
                                id: mesh67
                                source: "meshes/mesh67.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group79
                            Model {
                                id: mesh68
                                source: "meshes/mesh68.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group80
                            Model {
                                id: mesh69
                                source: "meshes/mesh69.mesh"
                                z:-cabotAngle*10
                                eulerRotation.z: 0
                                eulerRotation.y: 0
                                eulerRotation.x: cabotAngle
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group81
                            Model {
                                id: mesh70
                                source: "meshes/mesh70.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group82
                            Model {
                                id: mesh71
                                source: "meshes/mesh71.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                        Node {
                            id: group83
                            Model {
                                id: mesh72
                                source: "meshes/mesh72.mesh"
                                materials: [
                                    body_color_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group84
                        Node {
                            id: group85
                            Model {
                                id: mesh73
                                source: "meshes/mesh73.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group86
                            Model {
                                id: mesh74
                                source: "meshes/mesh74.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group87
                            Model {
                                id: mesh75
                                source: "meshes/mesh75.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group88
                            Model {
                                id: mesh76
                                source: "meshes/mesh76.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group89
                            Model {
                                id: mesh77
                                opacity: backLamps
                                source: "meshes/mesh77.mesh"
                                materials: [
                                    tail_light_red_3_material
                                ]
                            }
                        }
                        Node {
                            id: group90
                            Model {
                                id: mesh78
                                source: "meshes/mesh78.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group91
                            Model {
                                id: mesh79
                                source: "meshes/mesh79.mesh"

                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group92
                            Model {
                                id: mesh80
                                source: "meshes/mesh80.mesh"
                                materials: [
                                    logo_red_material
                                ]
                            }
                        }
                        Node {
                            id: group93
                            Model {
                                id: mesh81
                                source: "meshes/mesh81.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group94
                            Model {
                                id: mesh82
                                source: "meshes/mesh82.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group95
                            Model {
                                id: mesh83
                                source: "meshes/mesh83.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group96
                            Model {
                                id: mesh84
                                source: "meshes/mesh84.mesh"
                                z:-cabotAngle*10
                                eulerRotation.z: 0
                                eulerRotation.y: 0
                                eulerRotation.x: cabotAngle
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group97
                            Model {
                                id: mesh85
                                source: "meshes/mesh85.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group98
                            Model {
                                id: mesh86
                                source: "meshes/mesh86.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                        Node {
                            id: group99
                            Model {
                                id: mesh87
                                source: "meshes/mesh87.mesh"
                                materials: [
                                    chrome_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group100
                        Node {
                            id: group101
                            Model {
                                id: mesh88
                                source: "meshes/mesh88.mesh"
                                materials: [
                                    grille_material
                                ]
                            }
                        }
                        Node {
                            id: group102
                            Model {
                                id: mesh89
                                source: "meshes/mesh89.mesh"
                                materials: [
                                    grille_material
                                ]
                            }
                        }
                        Node {
                            id: group103
                            Model {
                                id: mesh90
                                source: "meshes/mesh90.mesh"
                                materials: [
                                    grille_material
                                ]
                            }
                        }
                        Node {
                            id: group104
                            Model {
                                id: mesh91
                                source: "meshes/mesh91.mesh"
                                materials: [
                                    grille_material
                                ]
                            }
                        }
                        Node {
                            id: group105
                            Model {
                                id: mesh92
                                source: "meshes/mesh92.mesh"
                                materials: [
                                    grille_material
                                ]
                            }
                        }
                        Node {
                            id: group106
                            Model {
                                id: mesh93
                                source: "meshes/mesh93.mesh"
                                materials: [
                                    grille_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group107
                        Node {
                            id: group108
                            Model {
                                id: mesh94
                                source: "meshes/mesh94.mesh"
                                materials: [
                                    metal_1_material
                                ]
                            }
                        }
                        Node {
                            id: group109
                            Model {
                                id: mesh95
                                source: "meshes/mesh95.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group110
                            Model {
                                id: mesh96
                                source: "meshes/mesh96.mesh"
                                materials: [
                                    metal_1_material
                                ]
                            }
                        }
                        Node {
                            id: group111
                            Model {
                                id: mesh97
                                source: "meshes/mesh97.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                        Node {
                            id: group112
                            Model {
                                id: mesh98
                                source: "meshes/mesh98.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group113
                            Model {
                                id: mesh99
                                source: "meshes/mesh99.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group114
                            Model {
                                id: mesh100
                                source: "meshes/mesh100.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                        Node {
                            id: group115
                            Model {
                                id: mesh101
                                source: "meshes/mesh101.mesh"
                                materials: [
                                    metal_1_material
                                ]
                            }
                        }
                        Node {
                            id: group116
                            Model {
                                id: mesh102
                                source: "meshes/mesh102.mesh"
                                materials: [
                                    metal_1_material
                                ]
                            }
                        }
                        Node {
                            id: group117
                            Model {
                                id: mesh103
                                source: "meshes/mesh103.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                        Node {
                            id: group118
                            Model {
                                id: mesh104
                                source: "meshes/mesh104.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group119
                            Model {
                                id: mesh105
                                source: "meshes/mesh105.mesh"
                                materials: [
                                    metal_2_material
                                ]
                            }
                        }
                        Node {
                            id: group120
                            Model {
                                id: mesh106
                                source: "meshes/mesh106.mesh"
                                materials: [
                                    metal_2_material
                                ]
                            }
                        }
                        Node {
                            id: group121
                            Model {
                                id: mesh107
                                source: "meshes/mesh107.mesh"
                                materials: [
                                    metal_2_material
                                ]
                            }
                        }
                        Node {
                            id: group122
                            Model {
                                id: mesh108
                                source: "meshes/mesh108.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group123
                            Model {
                                id: mesh109
                                source: "meshes/mesh109.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group124
                            Model {
                                id: mesh110
                                source: "meshes/mesh110.mesh"
                                materials: [
                                    metal_1_material
                                ]
                            }
                        }
                        Node {
                            id: group125
                            Model {
                                id: mesh111
                                source: "meshes/mesh111.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group126
                        Node {
                            id: group127
                            Model {
                                id: mesh112
                                source: "meshes/mesh112.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group128
                            Model {
                                id: mesh113
                                source: "meshes/mesh113.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group129
                            Node {
                                id: group130
                                Model {
                                    id: mesh114
                                    source: "meshes/mesh114.mesh"
                                    materials: [
                                        metal_2_material
                                    ]
                                }
                            }
                            Model {
                                id: mesh115
                                source: "meshes/mesh115.mesh"
                                materials: [
                                    metal_2_material
                                ]
                            }
                        }
                        Node {
                            id: group131
                            Model {
                                id: mesh116
                                source: "meshes/mesh116.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                        Node {
                            id: group132
                            Model {
                                id: mesh117
                                source: "meshes/mesh117.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group133
                            Model {
                                id: mesh118
                                source: "meshes/mesh118.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                        Node {
                            id: group134
                            Model {
                                id: mesh119
                                source: "meshes/mesh119.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group135
                            Model {
                                id: mesh120
                                source: "meshes/mesh120.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                        Node {
                            id: group136
                            Model {
                                id: mesh121
                                source: "meshes/mesh121.mesh"
                                materials: [
                                    frontColor_material
                                ]
                            }
                        }
                        Node {
                            id: group137
                            Model {
                                id: mesh122
                                source: "meshes/mesh122.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group138
                            Model {
                                id: mesh123
                                source: "meshes/mesh123.mesh"
                                materials: [
                                    aluminium_1_material
                                ]
                            }
                        }
                        Node {
                            id: group139
                            Model {
                                id: mesh124
                                source: "meshes/mesh124.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                        Node {
                            id: group140
                            Model {
                                id: mesh125
                                source: "meshes/mesh125.mesh"
                                materials: [
                                    aluminum_2_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: group141
                        Node {
                            id: group142
                            Model {
                                id: mesh126
                                source: "meshes/mesh126.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group143
                            Model {
                                id: mesh127
                                source: "meshes/mesh127.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group144
                            Model {
                                id: mesh128
                                source: "meshes/mesh128.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group145
                            Model {
                                id: mesh129
                                source: "meshes/mesh129.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group146
                            Model {
                                id: mesh130
                                source: "meshes/mesh130.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group147
                            Model {
                                id: mesh131
                                source: "meshes/mesh131.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group148
                            Model {
                                id: mesh132
                                source: "meshes/mesh132.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group149
                            Model {
                                id: mesh133
                                source: "meshes/mesh133.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group150
                            Model {
                                id: mesh134
                                source: "meshes/mesh134.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group151
                            Model {
                                id: mesh135
                                source: "meshes/mesh135.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group152
                            Model {
                                id: mesh136
                                source: "meshes/mesh136.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group153
                            Model {
                                id: mesh137
                                source: "meshes/mesh137.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group154
                            Model {
                                id: mesh138
                                source: "meshes/mesh138.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group155
                            Model {
                                id: mesh139
                                source: "meshes/mesh139.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group156
                            Model {
                                id: mesh140
                                source: "meshes/mesh140.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group157
                            Model {
                                id: mesh141
                                source: "meshes/mesh141.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group158
                            Model {
                                id: mesh142
                                source: "meshes/mesh142.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group159
                            Model {
                                id: mesh143
                                source: "meshes/mesh143.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group160
                            Model {
                                id: mesh144
                                source: "meshes/mesh144.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group161
                            Model {
                                id: mesh145
                                source: "meshes/mesh145.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group162
                            Model {
                                id: mesh146
                                source: "meshes/mesh146.mesh"
                                x:-doorAngle*17
                                z:-doorAngle*38
                                eulerRotation.z: 0
                                eulerRotation.y: -doorAngle
                                eulerRotation.x: -0
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group163
                            Model {
                                id: mesh147
                                source: "meshes/mesh147.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group164
                            Model {
                                id: mesh148
                                source: "meshes/mesh148.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group165
                            Model {
                                id: mesh149
                                source: "meshes/mesh149.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group166
                            Model {
                                id: mesh150
                                source: "meshes/mesh150.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group167
                            Model {
                                id: mesh151
                                source: "meshes/mesh151.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                        Node {
                            id: group168
                            Model {
                                id: mesh152
                                source: "meshes/mesh152.mesh"
                                materials: [
                                    black_matt_material
                                ]
                            }
                        }
                    }
                }
                Node {
                    id: group169
                    Node {
                        id: group170
                        Model {
                            id: mesh153
                            source: "meshes/mesh153.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group171
                        Model {
                            id: mesh154
                            source: "meshes/mesh154.mesh"
                            materials: [
                                metal_1_material
                            ]
                        }
                    }
                    Node {
                        id: group172
                        Model {
                            id: mesh155
                            source: "meshes/mesh155.mesh"
                            materials: [
                                tyre_material
                            ]
                        }
                    }
                    Node {
                        id: group173
                        Model {
                            id: mesh156
                            source: "meshes/mesh156.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group174
                        Model {
                            id: mesh157
                            source: "meshes/mesh157.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group175
                        Model {
                            id: mesh158
                            source: "meshes/mesh158.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group176
                        Model {
                            id: mesh159
                            source: "meshes/mesh159.mesh"
                            materials: [
                                rims_1_material
                            ]
                        }
                    }
                    Node {
                        id: group177
                        Model {
                            id: mesh160
                            source: "meshes/mesh160.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                }
                Node {
                    id: group178
                    Node {
                        id: group179
                        Model {
                            id: mesh161
                            source: "meshes/mesh161.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group180
                        Model {
                            id: mesh162
                            source: "meshes/mesh162.mesh"
                            materials: [
                                metal_1_material
                            ]
                        }
                    }
                    Node {
                        id: group181
                        Model {
                            id: mesh163
                            source: "meshes/mesh163.mesh"
                            materials: [
                                tyre_material
                            ]
                        }
                    }
                    Node {
                        id: group182
                        Model {
                            id: mesh164
                            source: "meshes/mesh164.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                    Node {
                        id: group183
                        Model {
                            id: mesh165
                            source: "meshes/mesh165.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group184
                        Model {
                            id: mesh166
                            source: "meshes/mesh166.mesh"
                            materials: [
                                chrome_material
                            ]
                        }
                    }
                    Node {
                        id: group185
                        Model {
                            id: mesh167
                            source: "meshes/mesh167.mesh"
                            materials: [
                                rims_1_material
                            ]
                        }
                    }
                    Node {
                        id: group186
                        Model {
                            id: mesh168
                            source: "meshes/mesh168.mesh"
                            materials: [
                                metal_2_material
                            ]
                        }
                    }
                }
            }
        }
    }

    Node {
        id: __materialLibrary__

        DefaultMaterial {
            id: metal_2_material
            objectName: "metal_2_material"
            diffuseColor: "#ff4b4b4b"
        }

        DefaultMaterial {
            id: metal_1_material
            objectName: "metal_1_material"
            diffuseColor: "#ff8c8c8c"
        }

        DefaultMaterial {
            id: tyre_material
            objectName: "tyre_material"
            diffuseColor: "#ff000000"
        }

        DefaultMaterial {
            id: chrome_material
            objectName: "chrome_material"
            diffuseColor: "#ffbfbfbf"
        }

        DefaultMaterial {
            id: rims_1_material
            objectName: "rims_1_material"
            diffuseColor: "#ffb1b1b1"
        }

        DefaultMaterial {
            id: interior_roof_material
            objectName: "interior_roof_material"
            diffuseColor: "#ff252324"
        }

        DefaultMaterial {
            id: black_gloss_material
            objectName: "black_gloss_material"
            diffuseColor: "#ff191919"
        }

        DefaultMaterial {
            id: tail_light_red_2_material
            objectName: "tail_light_red_2_material"
            diffuseColor: "#131111"
        }

        DefaultMaterial {
            id: interior_1_material
            objectName: "interior_1_material"
            diffuseColor: "#ff050505"
        }

        DefaultMaterial {
            id: interior_2_material
            objectName: "interior_2_material"
            diffuseColor: "#fff2f2ea"
        }

        DefaultMaterial {
            id: trim_material
            objectName: "trim_material"
            diffuseColor: "#ff282828"
        }

        DefaultMaterial {
            id: glass_window_material
            diffuseColor: "#ff2b3833"
            opacity: 0.25
            objectName: "glass_window_material"
        }

        DefaultMaterial {
            id: glass_lamp_material
            diffuseColor: "#ff7f7f7f"
            opacity: 0.2
            objectName: "glass_lamp_material"
        }

        DefaultMaterial {
            id: glass_projector_material
            diffuseColor: "#ff505050"
            opacity: 0.8
            objectName: "glass_projector_material"
        }

        DefaultMaterial {
            id: light_material
            objectName: "light_material"
            diffuseColor: "#ffffff"
        }

        DefaultMaterial {
            id: tail_light_red_1_material
            objectName: "tail_light_red_1_material"
            diffuseColor: "#ff3b2d"
        }

        DefaultMaterial {
            id: tail_light_red_3_material
            objectName: "tail_light_red_3_material"
            diffuseColor: "#cf1800"
        }

        DefaultMaterial {
            id: body_color_material
            objectName: "body_color_material"
            diffuseColor: "#390bc8"
        }

        DefaultMaterial {
            id: logo_red_material
            objectName: "logo_red_material"
            diffuseColor: "#ff000a"
        }

        DefaultMaterial {
            id: black_matt_material
            objectName: "black_matt_material"
            diffuseColor: "#ff262626"
        }

        DefaultMaterial {
            id: grille_material
            objectName: "grille_material"
            diffuseColor: "#ff000000"
        }

        DefaultMaterial {
            id: aluminium_1_material
            objectName: "aluminium_1_material"
            diffuseColor: "#ffbfbfbf"
        }

        DefaultMaterial {
            id: aluminum_2_material
            objectName: "aluminum_2_material"
            diffuseColor: "#ff7f7f7f"
        }

        DefaultMaterial {
            id: frontColor_material
            diffuseColor: "#e6e6e6"
            objectName: "frontColor_material"
        }
    }
}
