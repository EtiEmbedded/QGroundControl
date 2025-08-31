import QtQuick
import QtQuick.Controls
//import QtSvg 1.0  // QtSvg modülünü import ettik



Rectangle {
    width: 1560
    height: 1080
    color: "black" // Motors səhifəsi: tam qara

    // Motors Config

        Text {
            text: "Motors Config";
            color: "white";
            x: 50; y: 40;
            font.pixelSize: 26; font.bold: true

            }

        // Test and verify motor direction and throttle levels

        Text {
            text: "Test and verify motor direction and throttle levels";
            color: "#E8E8E8";
            x: 50; y: 86;
            font.pixelSize: 16; font.bold: true
        }

        // Warning

        Rectangle {x: 50; y: 176;
            width:1490; height: 52;
            color: "#947272";
            radius: 10
            border.width: 1; border.color: "#FF0000"

            Image {
                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/bx_error.svg"
                width: 30
                height: 30
                x: 20
                y: 7
                fillMode: Image.PreserveAspectFit
                smooth: true

            }

        Text { text:"Warning: Use with extreme caution. Motors will spin!";
            color: "#E7391E";
            x: 68; y: 14;
            font.pixelSize: 16;font.bold: true }
        }

        // Propellers

        Rectangle {x: 50; y: 252;
            width:1490; height: 57;
            color: "#3D3B3B";
            radius: 16
            border.width: 1; border.color: "#9D9D9D"

            // Toggle düyməsi

               Switch {
                   id: toggleButton
                   x: 40
                   y: 20
                   width: 30
                   height: 18
                   checked: false  // İlk vəziyyət - toggle düyməsi bağlıdır

                   onCheckedChanged: {
                       if (toggleButton.checked) {
                           // Toggle düyməsi açıq olduqda ediləcək əməliyyat
                           console.log("Propellerlər aktivləşdirildi");
                           // Burada propellerləri və ya motorları aktivləşdirmək üçün lazım olan kodu əlavə edə bilərsiniz
                       } else {
                           // Toggle düyməsi bağlı olduqda ediləcək əməliyyat
                           console.log("Propellerlər çıxarıldı");
                           // Burada propellerləri və ya motorları söndürmək üçün lazım olan kodu əlavə edə bilərsiniz
                       }
                   }
               }

               Image {
                   source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Vector.svg"
                   width: 33
                   height: 20
                   x: 90
                   y: 19
                   fillMode: Image.PreserveAspectFit
                   smooth: true

               }
        Text { text:"Propellers are removed - Enable slider and motors";
            color: "#FFFFFF";
            x: 120; y: 16.5;
            font.pixelSize: 16;font.bold: true }
        }

        // Throttle

        Rectangle {x: 50; y: 333;
            width:1492; height: 136;
            color: "#3D3B3B";
            radius: 16
            border.width: 1; border.color: "#9D9D9D"

            Text { text:"Throttle";
                color: "#FFFFFF";
                x: 30; y: 23;
                font.pixelSize: 16;font.bold: true



                Slider {  y: 40
                        id: s
                        width: 1430
                        height: 43
                        from: 0; to: 100; value: 50

                        property real trackH: 12  // ← qalınlıq (istədiyin rəqəmi ver)

                        // Qalın xətt
                        background: Rectangle {
                            x: s.leftPadding
                            y: s.height/2 - s.trackH/2
                            width: s.availableWidth
                            height: s.trackH
                            radius: height/2
                            color: "#707070"
                        }

                        // (İstəyə görə) dairəni də böyütmək
                        handle: Rectangle {
                            width: 14; height: 14; radius: 7
                            color: "white"; border.color: "#9D9D9D"; border.width: 1
                            y: s.height/2 - height/2
                            x: s.leftPadding + s.visualPosition * (s.availableWidth - width)
                    }
                }
            }
        }

        // Motor Control

        Rectangle { x: 50; y: 493.5;
            width:1492; height: 249;
            color: "#3D3B3B";
            radius: 16
            border.width: 1; border.color: "#9D9D9D"

            Text { text:"Motor Control";
                color: "#FFFFFF";
                x: 30; y: 23;
                font.pixelSize: 16;font.bold: true
            }

            // Secimler A

            Rectangle { x: 30; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"A";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }
                //  B

            Rectangle { x: 184; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"B";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }

            // C

            Rectangle { x: 338; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"C";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }

            // D

            Rectangle { x: 492; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"D";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }

            // E

            Rectangle { x: 646; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"E";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }

            // F

            Rectangle { x: 800; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"F";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }

            // G

            Rectangle { x: 954; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"G";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }

            // H

            Rectangle { x: 1108; y: 94;
                width:121; height: 44;
                color: "#888585";
                radius: 10


                Text { text:"H";
                    color: "#FFFFFF";
                    x: 54; y: 10;
                    font.pixelSize: 18;font.bold: true }
            }

            // All

            Rectangle { x: 630.73; y: 174;
                width:97; height: 45;
                color: "#3D3B3B";
                radius: 6
                border.width: 0.5; border.color: "#9D9D9D"

                Row {
                        anchors.centerIn: parent
                        spacing: 4   // ikon ile yazı arası boşluk

                Image {
                    source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Motor_On_Off.svg"
                    width: 20
                    height: 20
                    x: 25
                    y: 3
                    fillMode: Image.PreserveAspectFit
                    smooth: true

                }

                Text { text: "All";
                    color: "#E8E8E8";
                    x: 28.5; y: 1;
                    font.pixelSize: 16; font.bold: true }
            }
        }
            // Stop

            Rectangle { x: 751.73; y: 174;
                width:107.55; height: 45;
                color: "#474747";
                radius: 6
                border.width: 0.5; border.color: "#9D9D9D"

                Row {
                        anchors.centerIn: parent
                        spacing: 8   // ikon ile yazı arası boşluk

                Image {
                    source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Stop.svg"
                    width: 16
                    height: 16
                    x: 1
                    y: 5
                    fillMode: Image.PreserveAspectFit
                    smooth: true

                }


                Text { text: "Stop";
                    color: "#E8E8E8";
                    x: 45; y: 1;
                    font.pixelSize: 17; font.bold: true }
            }
        }
        }

        //  Make sure your propellers

        Rectangle {x: 50; y: 766;
            width:1490; height: 52;
            color: "#ACA8A8";
            radius: 10
            border.width: 1; border.color: "#9D9D9D"

            Image {
                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/bx_error.svg"
                width: 30
                height: 30
                x: 20
                y: 10
                fillMode: Image.PreserveAspectFit
                smooth: true

            }

            Text { text:"Make sure your propellers are removed before testing motors.";
                color: "#FFFFFF";
                x: 68; y: 14;
                font.pixelSize: 16;font.bold: true }
        }
}
