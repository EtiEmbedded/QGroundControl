// // SideMenu_Sensors.qml
// import QtQuick 2.15
// import QtQuick.Controls 2.15

// Rectangle {
//     id: root
//     width: 1560; height: 1080
//     color: "black"

//     // ---- Router + Loader ----
//     Loader {
//         id: pageLoader
//         anchors.fill: parent
//         sourceComponent: sensorsPage   // default olaraq Sensors səhifəsi

//         function routeUrl(key) {
//             switch (key) {
//             case "accelerometer": return "SideMenu_Sensors_Accelerometer.qml"
//             case "compass":       return "SideMenu_Sensors_Compass.qml"
//             case "baro":          return "SideMenu_Sensors_Barometer.qml"
//             case "level":         return "SideMenu_Sensors_Level.qml"
//             case "compassmot":    return "SideMenu_Sensors_CompassMot.qml"
//             case "settings":      return "SideMenu_Sensors_Settings.qml"
//             default: return ""
//             }
//         }

//         function loadKey(key) {
//             const url = routeUrl(key)
//             if (!url) return
//             // Sub-səhifəyə lazım props-ları ötürürük
//             pageLoader.setSource(Qt.resolvedUrl(url), {
//                 // sub-səhifədən geri dönmək üçün çağırılacaq funksiya
//                 goBack: function () {
//                     // sub-səhifəni bağla və Sensors səhifəsini geri yüklə
//                     pageLoader.setSource("", {})                 // əvvəl təmizlə
//                     pageLoader.sourceComponent = sensorsPage     // sonra Component-i bərpa et
//                 },
//                 // Accelerometer panelini avtomatik açmaq üçün flag (istifadə edəcəksə)
//                 panelAutostart: (key === "accelerometer")
//             })
//         }

//         // Hər dəfə yeni item yüklənəndə Sensors səhifəsinin siqnalını qoşuruq
//         onLoaded: {
//             if (item && item.openPage && !item._navWired) {
//                 item._navWired = true
//                 item.openPage.connect(function(key) { pageLoader.loadKey(key) })
//             }
//         }

//         // Niyə “heç nə açılmadı”nı izləmək üçün
//         onStatusChanged: {
//             if (status === Loader.Error)
//                 console.log("[Loader ERROR]", errorString(), "source:", source)
//             else if (status === Loader.Ready)
//                 console.log("[Loader READY]", source || "Component")
//         }
//     }

//     // ---- SENSORS səhifəsi: başlıq + 6 kart ----
//     Component {
//         id: sensorsPage

//         Item {
//             id: sensors
//             width: 1560; height: 1080

//             // Naviqasiya siqnalı
//             signal openPage(string key)

//             // Başlıqlar
//             Text { text: "Sensor Calibration"; color: "white"; x:35; y:40; font.pixelSize: 26; font.bold: true }
//             Text { text: "Calibrate your vehicle's sensors for accurate flight control"; color:"#E8E8E8"; x:35; y:86; font.pixelSize: 16 }

//             // --------- 1) Accelerometer ----------
//             Rectangle {
//                 x: 30; y: 173; width: 480; height: 248
//                 color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

//                 Text { text: "Accelerometer"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
//                 Text { text: "Calibrate the accelerometer by placing the vehicle in\ndifferent orientations"; color:"white"; x:30; y:105; font.pixelSize:14 }

//                 // Düymə
//                 Rectangle {
//                     x: 30; y: 173; width: 420; height: 42.13
//                     color: "#9D9D9D"; radius: 6; border.width: 0.5; border.color: "#2A2A2A"
//                     Text { text: "Calibrate Accelerometer"; color:"white"; x:111; y:9; font.pixelSize:16; font.bold:true }
//                     MouseArea {
//                         anchors.fill: parent; cursorShape: Qt.PointingHandCursor
//                         onClicked: {
//                                     // PageLoader-da doğru səhifəni yükləyirik
//                                     pageLoader.loadKey("accelerometer")
//                                 }
//                     }
//                 }
//             }

//             // --------- 2) Compass ----------
//             Rectangle {
//                 x: 535; y: 173; width: 480; height: 248
//                 color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
//                 Text { text: "Compass"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
//                 Text { text: "Calibrate the compass by rotating the vehicle in all\ndirections"; color:"white"; x:30; y:105; font.pixelSize:14 }
//                 Rectangle {
//                     x: 30; y: 173; width: 420; height: 42.13
//                     color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
//                     Text { text:"Calibrate Compass"; color:"white"; x:131; y:9; font.pixelSize:16; font.bold:true }
//                     MouseArea { anchors.fill: parent; onClicked: sensors.openPage("compass") }
//                 }
//             }

//             // --------- 3) Barometer ----------
//             Rectangle {
//                 x: 1040; y: 173; width: 480; height: 248
//                 color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
//                 Text { text: "Calibrate Barometer"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
//                 Text { text: "Calibrate Baro/Airspeed Keep the vehicle still to let sensors\nstabilize and record accurate pressure readings"; color:"white"; x:30; y:105; font.pixelSize:14 }
//                 Rectangle {
//                     x: 30; y: 173; width: 420; height: 42.13
//                     color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
//                     Text { text:"Calibrate Barometer"; color:"white"; x:127; y:9; font.pixelSize:16; font.bold:true }
//                     MouseArea { anchors.fill: parent; onClicked: sensors.openPage("baro") }
//                 }
//             }

//             // --------- 4) Level Horizon ----------
//             Rectangle {
//                 x: 30; y: 446; width: 480; height: 248
//                 color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
//                 Text { text:"Level Horizon"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
//                 Text { text:"Calibrate the level horizon place the vehicle on a flat\nsurface and set this position as level"; color:"white"; x:30; y:105; font.pixelSize:14 }
//                 Rectangle {
//                     x: 30; y: 173; width: 420; height: 42.13
//                     color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
//                     Text { text:"Calibrate Level Horizon"; color:"white"; x:118; y:9; font.pixelSize:16; font.bold:true }
//                     MouseArea { anchors.fill: parent; onClicked: sensors.openPage("level") }
//                 }
//             }

//             // --------- 5) CompassMot ----------
//             Rectangle {
//                 x: 535; y: 446; width: 480; height: 248
//                 color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
//                 Text { text:"CompassMot"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
//                 Text { text:"Calibrate CompassMot Rotate vehicle with motors on at\nlow speed"; color:"white"; x:30; y:105; font.pixelSize:14 }
//                 Rectangle {
//                     x: 30; y: 173; width: 420; height: 42.13
//                     color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
//                     Text { text:"Calibrate CompassMot"; color:"white"; x:113; y:9; font.pixelSize:16; font.bold:true }
//                     MouseArea { anchors.fill: parent; onClicked: sensors.openPage("compassmot") }
//                 }
//             }

//             // --------- 6) Sensor Settings ----------
//             Rectangle {
//                 x: 1040; y: 446; width: 480; height: 248
//                 color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
//                 Text { text:"Sensor Settings"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
//                 Text { text:"Calibrate Sensot Settings: Follow device prompts to adjust all sensors for accurate readings"; color:"white"; x:30; y:105; font.pixelSize:14 }
//                 Rectangle {
//                     x: 30; y: 173; width: 420; height: 42.13
//                     color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
//                     Text { text:"Calibrate Sensor Settings"; color:"white"; x:111; y:9; font.pixelSize:16; font.bold:true }
//                     MouseArea { anchors.fill: parent; onClicked: sensors.openPage("settings") }
//                 }
//             }
//         }
//     }
// }
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 1560; height: 1080
    color: "black"

    // ---- Router + Loader ----
    Loader {
        id: pageLoader
        anchors.fill: parent
        sourceComponent: sensorsPage   // default olaraq Sensors səhifəsi

        function routeUrl(key) {
            switch (key) {
            case "accelerometer": return "SideMenu_Sensors_Accelerometer.qml"
            case "compass":       return "SideMenu_Sensors_Compass.qml"
            case "baro":          return "SideMenu_Sensors_Barometer.qml"
            case "level":         return "SideMenu_Sensors_Level.qml"
            case "compassmot":    return "SideMenu_Sensors_CompassMot.qml"
            case "settings":      return "SideMenu_Sensors_Settings.qml"
            default: return ""
            }
        }

        function loadKey(key) {
            const url = routeUrl(key)
            if (!url) return
            // Sub-səhifəyə lazım props-ları ötürürük
            pageLoader.setSource(Qt.resolvedUrl(url), {
                // sub-səhifədən geri dönmək üçün çağırılacaq funksiya
                goBack: function () {
                    // sub-səhifəni bağla və Sensors səhifəsini geri yüklə
                    pageLoader.setSource("", {})                 // əvvəl təmizlə
                    pageLoader.sourceComponent = sensorsPage     // sonra Component-i bərpa et
                },
                // Accelerometer panelini avtomatik açmaq üçün flag (istifadə edəcəksə)
                panelAutostart: (key === "accelerometer")
            })
        }

        // Hər dəfə yeni item yüklənəndə Sensors səhifəsinin siqnalını qoşuruq
        onLoaded: {
            if (item && item.openPage && !item._navWired) {
                item._navWired = true
                item.openPage.connect(function(key) { pageLoader.loadKey(key) })
            }
        }

        // Niyə “heç nə açılmadı”nı izləmək üçün
        onStatusChanged: {
            if (status === Loader.Error)
                console.log("[Loader ERROR]", errorString(), "source:", source)
            else if (status === Loader.Ready)
                console.log("[Loader READY]", source || "Component")
        }
    }

    // ---- SENSORS səhifəsi: başlıq + 6 kart ----
    Component {
        id: sensorsPage

        Item {
            id: sensors
            width: 1560; height: 1080

            // Naviqasiya siqnalı
            signal openPage(string key)

            // Başlıqlar
            Text { text: "Sensor Calibration"; color: "white"; x:35; y:40; font.pixelSize: 26; font.bold: true }
            Text { text: "Calibrate your vehicle's sensors for accurate flight control"; color:"#E8E8E8"; x:35; y:86; font.pixelSize: 16 }

            // --------- 1) Accelerometer ----------
            Rectangle {
                x: 30; y: 173; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

                Text { text: "Accelerometer"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text: "Calibrate the accelerometer by placing the vehicle in\ndifferent orientations"; color:"white"; x:30; y:105; font.pixelSize:14 }

                // Düymə
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color: "#9D9D9D"; radius: 6; border.width: 0.5; border.color: "#2A2A2A"
                    Text { text: "Calibrate Accelerometer"; color:"white"; x:111; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea {
                        anchors.fill: parent; cursorShape: Qt.PointingHandCursor
                        onClicked:{
                            // Dialog pəncərəsini açırıq
                             accelerometerPanel.visible = true
                        }
                    }
                }
            }

            // --------- 2) Compass ----------
            Rectangle {
                x: 535; y: 173; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text: "Compass"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text: "Calibrate the compass by rotating the vehicle in all\ndirections"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Compass"; color:"white"; x:131; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent;
                        onClicked:{
                            // Dialog pəncərəsini açırıq
                             compassPanel.visible = true
                        }
                    }
                }
            }

            // --------- 3) Barometer ----------
            Rectangle {
                x: 1040; y: 173; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text: "Calibrate Barometer"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text: "Calibrate Baro/Airspeed Keep the vehicle still to let sensors\nstabilize and record accurate pressure readings"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Barometer"; color:"white"; x:127; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("baro") }
                }
            }

            // --------- 4) Level Horizon ----------
            Rectangle {
                x: 30; y: 446; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text:"Level Horizon"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text:"Calibrate the level horizon place the vehicle on a flat\nsurface and set this position as level"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Level Horizon"; color:"white"; x:118; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("level") }
                }
            }

            // --------- 5) CompassMot ----------
            Rectangle {
                x: 535; y: 446; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text:"CompassMot"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text:"Calibrate CompassMot Rotate vehicle with motors on at\nlow speed"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate CompassMot"; color:"white"; x:113; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("compassmot") }
                }
            }

            // --------- 6) Sensor Settings ----------
            Rectangle {
                x: 1040; y: 446; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text:"Sensor Settings"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text:"Calibrate Sensot Settings: Follow device prompts to adjust all sensors for accurate readings"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Sensor Settings"; color:"white"; x:111; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("settings") }
                }
            }
        }
    }

        // ---- Panel ----
                Rectangle {
                    id: accelerometerPanel
                    x:360
                    y:370
                    width: 451
                    height: 354
                    color: "#2A2A2A"
                    radius: 5
                    visible: false  // Əvvəlcə gizlidir

                    Rectangle {

                      width:451; height: 53;
                      color: "#3D3B3B"
                      border.color: "#474747"
                      //border.width: 0.5

                    Text { text:"Calibrate Accelerometer";
                      color: "#FFFFFF"; x: 114; y: 13;
                      font.pixelSize: 18; font.bold: true }

                    Image {
                        source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/x.svg"
                        width: 20
                        height: 20
                        x: 418.5
                        y: 16.5
                        fillMode: Image.PreserveAspectFit
                        smooth: true

                        // MouseArea komponenti ilə klik hadisəsini ələ alırıq
                                    MouseArea {
                                        anchors.fill: parent
                                        onClicked: {
                                            // accelerometerPanel görünməz olur
                                            accelerometerPanel.visible = false
                                        }

                    }}

                  }
                    Rectangle {
                        y:63
                        width:451
                        height: 44
                        color: "#3D3B3B"


                    Text {
                        text:"Autopilot Rotation:";
                        width:450
                        height: 44
                        color: "#FFFFFF";
                        x: 26; y: 10
                        font.pixelSize: 16
                        font.bold: true }

                    ComboBox {
                        id: returnNone
                        model: ["None", "Yaw45", "Yaw90", "Yaw135", "Yaw180", "Yaw225", "Yaw270"]
                        width: 72
                        height: 28
                        x: 361
                        y: 8
                        font.pixelSize: 12
                        font.bold: true

                        background: Rectangle {
                            color: "#3D3B3B"
                            radius: 3
                            border.color: "#9D9D9D"
                            border.width: 1
                        }

                        contentItem: Text {
                            text: returnNone.currentText
                            color: "#FFFFFF"
                            font.pixelSize: 15
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignLeft
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 6
                        }

                    }
                    }



                    Row {
                        id: rowGcs
                           anchors.left: parent.left
                           anchors.right: parent.right
                           anchors.verticalCenter: parent.verticalCenter
                           anchors.verticalCenterOffset: -30   // müsbət = aşağı, mənfi = yuxarı
                           anchors.margins: 14
                           spacing: 10

                        // ---- Checkbox ----
                        CheckBox {
                            id: cbGcs
                            text: ""
                            spacing: 0
                            leftPadding: 0; rightPadding: 0
                            topPadding: 0;  bottomPadding: 0

                            // Default labelı söndürürük ki, yalnız indikator görünsün
                            contentItem: Item { width: 0; height: 0 }

                            // Klik zonası = indikator ölçüsü
                            width: 20
                            height: 20

                            // İndikatoru koordinatla sürüşdürməyin; kliklə eyni sahəni tutsun
                            indicator: Rectangle {
                                id: indGcs
                                anchors.fill: parent
                                radius: 3
                                border.color: "#FFFFFF"
                                border.width: 2
                                color: "transparent"

                                Canvas {
                                    id: markGcs
                                    anchors.fill: parent
                                    onPaint: {
                                        var ctx = getContext("2d")
                                        ctx.clearRect(0,0,width,height)
                                        if (cbGcs.checked) {
                                            ctx.strokeStyle = "#FFFFFF"
                                            ctx.lineWidth = 2
                                            ctx.beginPath()
                                            ctx.moveTo(width*0.2, height*0.55)
                                            ctx.lineTo(width*0.45, height*0.8)
                                            ctx.lineTo(width*0.8, height*0.25)
                                            ctx.stroke()
                                        }
                                    }
                                }
                            }

                            // Status dəyişəndə işarəni yenidən çək
                            onCheckedChanged: markGcs.requestPaint()
                        }

                        // ---- Label ----
                        Item {
                            id: labelWrapGcs
                            anchors.verticalCenter: parent.verticalCenter
                            width: 62 + labelGcs.implicitWidth
                            height: Math.max(cbGcs.height, labelGcs.implicitHeight)

                            Text {
                                id: labelGcs
                                x: 8
                                y: 0
                                text: "Simple Accelerometer Calibration"
                                color: "#FFFFFF"
                                font.pixelSize: 14
                                font.bold: true
                                verticalAlignment: Text.AlignVCenter
                            }

                            // Mətni klikləyərək də checkbox-u dəyişmək üçün
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: cbGcs.checked = !cbGcs.checked
                            }
                        }
                    }



                        Text {
                            text: "Before proceeding:"
                            color: "#FFFFFF"
                            x:28
                            y: 175
                            font.pixelSize: 14
                        }

                        Text {
                            text: " . Ensure the vehicle is on a level surface"
                            color: "#FFFFFF"
                            x:30
                            y: 199
                            font.pixelSize: 14
                        }

                        Text {
                            text: " . Remove all external attachments"
                            color: "#FFFFFF"
                            x:30
                            y: 223
                            font.pixelSize: 14
                        }
                        Text {
                            text: " . Keep the vehicle stationary during calibration"
                            color: "#FFFFFF"
                            x:30
                            y: 247
                            font.pixelSize: 14
                        }

                        Rectangle {
                          x:289.5
                          y:292.18
                          radius: 4
                          width:74; height: 32;
                          color: "#3D3B3B"
                          border.color: "#9D9D9D"
                          border.width: 0.5

                        Text {
                            text:"Cancel";
                          color: "#E8E8E8"; x: 16.16; y: 7.54;
                          font.pixelSize: 12; font.bold: true }

                  }

                        Rectangle {
                          x:375.52
                          y:292.18
                          radius: 4
                          width:57.48; height: 32.33;
                          color: "#474747"


                        Text {
                            text:"OK";
                          color: "#E8E8E8"; x: 16.16; y: 7.54;
                          font.pixelSize: 12; font.bold: true }

                  }


    }

                // ---- Panel 2 ----

                        Rectangle {
                            id: compassPanel
                            x:360
                            y:320
                            width: 451
                            height: 559
                            color: "#2A2A2A"
                            radius: 5
                            visible: false  // Əvvəlcə gizlidir

                            Rectangle {

                              width:451; height: 53;
                              color: "#3D3B3B"
                              border.color: "#474747"
                              //border.width: 0.5

                            Text { text:"Calibrate Compass";
                              color: "#FFFFFF"; x: 146.5; y: 14;
                              font.pixelSize: 18; font.bold: true }

                            Image {
                                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/x.svg"
                                width: 20
                                height: 20
                                x: 418.5
                                y: 16.5
                                fillMode: Image.PreserveAspectFit
                                smooth: true

                                // MouseArea komponenti ilə klik hadisəsini ələ alırıq
                                            MouseArea {
                                                anchors.fill: parent
                                                onClicked: {
                                                    // accelerometerPanel görünməz olur
                                                    compassPanel.visible = false
                                                }

                            }}

                          }
                            Rectangle {
                                y:63
                                width:451
                                height: 44
                                color: "#3D3B3B"


                            Text {
                                text:"Autopilot Rotation:";
                                width:450
                                height: 44
                                color: "#FFFFFF";
                                x: 26; y: 10
                                font.pixelSize: 16
                                font.bold: true }

                            ComboBox {
                                id: returnNone1
                                model: ["None", "Yaw45", "Yaw90", "Yaw135", "Yaw180", "Yaw225", "Yaw270"]
                                width: 72
                                height: 28
                                x: 361
                                y: 8
                                font.pixelSize: 12
                                font.bold: true

                                background: Rectangle {
                                    color: "#3D3B3B"
                                    radius: 3
                                    border.color: "#9D9D9D"
                                    border.width: 1
                                }

                                contentItem: Text {
                                    text: returnNone.currentText
                                    color: "#FFFFFF"
                                    font.pixelSize: 15
                                    font.bold: true
                                    verticalAlignment: Text.AlignVCenter
                                    horizontalAlignment: Text.AlignLeft
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.left: parent.left
                                    anchors.leftMargin: 6
                                }

                            }
                            }

                            Text {
                                text: "Fast Calibration is suitable when the vehicle has been moved less than a few meters and the compass calibration is recent and accurate. For best results, ensure the vehicle is facing North during calibration. This helps establish a proper heading reference. If the vehicle has been moved significantly or this is the first calibration, consider performing a full calibration instead."
                                color: "#FFFFFF"
                                width: 407
                                height: 216
                                x: 26
                                y: 129
                                font.pixelSize: 14

                                // əsas parametrlər:
                                wrapMode: Text.WordWrap              // mətni eni keçdikdə qırır
                                horizontalAlignment: Text.AlignLeft  // qırıldıqdan sonra soldan davam etsin
                                verticalAlignment: Text.AlignTop     // mətn yuxarıdan başlasın
                            }






        //                     Row {
        //                         id: rowGcs1
        //                            anchors.left: parent.left
        //                            anchors.right: parent.right
        //                            anchors.verticalCenter: parent.verticalCenter
        //                            anchors.verticalCenterOffset: -30   // müsbət = aşağı, mənfi = yuxarı
        //                            anchors.margins: 14
        //                            spacing: 10

        //                         // ---- Checkbox ----
        //                         CheckBox {
        //                             id: cbGcs1
        //                             text: ""
        //                             spacing: 0
        //                             leftPadding: 0; rightPadding: 0
        //                             topPadding: 0;  bottomPadding: 0

        //                             // Default labelı söndürürük ki, yalnız indikator görünsün
        //                             contentItem: Item { width: 0; height: 0 }

        //                             // Klik zonası = indikator ölçüsü
        //                             width: 20
        //                             height: 20

        //                             // İndikatoru koordinatla sürüşdürməyin; kliklə eyni sahəni tutsun
        //                             indicator: Rectangle {
        //                                 id: indGcs1
        //                                 anchors.fill: parent
        //                                 radius: 3
        //                                 border.color: "#FFFFFF"
        //                                 border.width: 2
        //                                 color: "transparent"

        //                                 Canvas {
        //                                     id: markGcs1
        //                                     anchors.fill: parent
        //                                     onPaint: {
        //                                         var ctx = getContext("2d")
        //                                         ctx.clearRect(0,0,width,height)
        //                                         if (cbGcs.checked) {
        //                                             ctx.strokeStyle = "#FFFFFF"
        //                                             ctx.lineWidth = 2
        //                                             ctx.beginPath()
        //                                             ctx.moveTo(width*0.2, height*0.55)
        //                                             ctx.lineTo(width*0.45, height*0.8)
        //                                             ctx.lineTo(width*0.8, height*0.25)
        //                                             ctx.stroke()
        //                                         }
        //                                     }
        //                                 }
        //                             }

        //                             // Status dəyişəndə işarəni yenidən çək
        //                             onCheckedChanged: markGcs.requestPaint()
        //                         }

        //                         // ---- Label ----
        //                         Item {
        //                             id: labelWrapGcs1
        //                             anchors.verticalCenter: parent.verticalCenter
        //                             width: 62 + labelGcs.implicitWidth
        //                             height: Math.max(cbGcs.height, labelGcs.implicitHeight)

        //                             Text {
        //                                 id: labelGcs1
        //                                 x: 8
        //                                 y: 0
        //                                 text: "Simple Accelerometer Calibration"
        //                                 color: "#FFFFFF"
        //                                 font.pixelSize: 14
        //                                 font.bold: true
        //                                 verticalAlignment: Text.AlignVCenter
        //                             }

        //                             // Mətni klikləyərək də checkbox-u dəyişmək üçün
        //                             MouseArea {
        //                                 anchors.fill: parent
        //                                 cursorShape: Qt.PointingHandCursor
        //                                 onClicked: cbGcs.checked = !cbGcs.checked
        //                             }
        //                         }
        //                     }



                                Text {
        //                             text: "Before proceeding:"
        //                             color: "#FFFFFF"
        //                             x:28
        //                             y: 175
        //                             font.pixelSize: 14
        //                         }

        //                         Text {
        //                             text: " . Ensure the vehicle is on a level surface"
        //                             color: "#FFFFFF"
        //                             x:30
        //                             y: 199
        //                             font.pixelSize: 14
        //                         }

        //                         Text {
        //                             text: " . Remove all external attachments"
        //                             color: "#FFFFFF"
        //                             x:30
        //                             y: 223
        //                             font.pixelSize: 14
        //                         }
        //                         Text {
        //                             text: " . Keep the vehicle stationary during calibration"
        //                             color: "#FFFFFF"
        //                             x:30
        //                             y: 247
        //                             font.pixelSize: 14
        //                         }

        //                         Rectangle {
        //                           x:289.5
        //                           y:292.18
        //                           radius: 4
        //                           width:74; height: 32;
        //                           color: "#3D3B3B"
        //                           border.color: "#9D9D9D"
        //                           border.width: 0.5

        //                         Text {
        //                             text:"Cancel";
        //                           color: "#E8E8E8"; x: 16.16; y: 7.54;
        //                           font.pixelSize: 12; font.bold: true }

        //                   }

        //                         Rectangle {
        //                           x:375.52
        //                           y:292.18
        //                           radius: 4
        //                           width:57.48; height: 32.33;
        //                           color: "#474747"


        //                         Text {
        //                             text:"OK";
        //                           color: "#E8E8E8"; x: 16.16; y: 7.54;
        //                           font.pixelSize: 12; font.bold: true }

                           }


            }
}

