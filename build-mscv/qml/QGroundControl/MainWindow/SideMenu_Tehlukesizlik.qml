import QtQuick
import QtQuick.Controls
//import QtSvg 1.0  // QtSvg modülünü import ettik



Rectangle {
    width: 1560
    height: 1080
    color: "black" // Tehlikesizlik səhifəsi: tam qara

    // Safety Configuration

        Text {
            text: "Safety Configuration";
            color: "#FFFFFF";
            x: 50; y: 40;
            font.pixelSize: 26; font.bold:  true

            }

        // Set failsafe and safety parameters

        Text {
            text: "Set failsafe and safety parameters";
            color: "#E8E8E8";
            x: 50; y: 85;
            font.pixelSize: 16; font.bold: true
        }


            // cercive -- Battery Failsafe Triggers


        Rectangle {
            width:1490; height: 324;x:50 ; y: 149; color: "#3D3B3B";radius: 16; border.width: 1; border.color: "#9D9D9D"

        Text { text:"Battery Failsafe Triggers";
            color: "#FFFFFF";
            x: 30; y: 30;
            font.pixelSize: 18;font.bold: true }

        // Low Action

        Rectangle { x:30; y:78;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Low Action";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        ComboBox {
            id: returnNone
            model: ["None", "RTL", "Land", "Q Land", "Loiter to QLand "]
            width: 101
            height: 37
            x: 584
            y: 12
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

        // Critical action

        Rectangle { x:757; y:78;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Critical action";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        ComboBox {
            id: returnCriticalAction
            model: ["None", "RTL", "Land", "Q Land", "Loiter to QLand "]
            width: 101
            height: 37
            x: 584
            y: 12
            font.pixelSize: 12
            font.bold: true

            background: Rectangle {
                color: "#3D3B3B"
                radius: 3
                border.color: "#9D9D9D"
                border.width: 1
            }

            contentItem: Text {
                text: returnCriticalAction.currentText
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

            // Low Voltage threshold (V)

        Rectangle { x:30; y:163;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Low Voltage threshold (V)";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        // textBox

        Rectangle { x:573; y:12;
            width:112; height: 37;
            color: "#3D3B3B"
             radius: 6;
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:"  10.4           V";
            color: "#FFFFFF"; x: 8; y: 6.5;
            font.pixelSize: 15; font.bold: true }

        }
    }

        // Cricital Voltage Threshold (V)

        Rectangle { x:757; y:163;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Cricital Voltage Threshold (V)";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        // textBox

        Rectangle { x:592; y:12;
            width: 93; height: 37;
            color: "#3D3B3B"
             radius: 6;
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:" 0              V";
            color: "#FFFFFF"; x: 8; y: 6.5;
            font.pixelSize: 15; font.bold: true }

        }
    }

        // Low mAh Threshold

    Rectangle { x:30; y: 246;
        width:703; height: 60;
        color: "#2A2A2A"
         radius: 6;

    Text { text:"Low mAh Threshold";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

    // textBox

    Rectangle { x:573; y:12;
        width:112; height: 37;
        color: "#3D3B3B"
         radius: 6;
         border.color: "#9D9D9D"
         border.width: 1

    Text { text:"  0          mAh";
        color: "#FFFFFF"; x: 8; y: 6.5;
        font.pixelSize: 15; font.bold: true }

    }
}
        // Cricital mAh Threshold

        Rectangle { x:757; y: 246;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Cricital mAh Threshold";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        // textBox

        Rectangle { x:573; y:12;
            width: 112; height: 37;
            color: "#3D3B3B"
             radius: 6
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:" 0            mAh";
            color: "#FFFFFF"; x: 8; y: 6.5;
            font.pixelSize: 15; font.bold: true }

        }
    }
 }

    //   --- Failsafe Triggers  ------cercive

        Rectangle { x:50; y: 496;
            width: 733; height: 234;
            color: "#3D3B3B"
             radius: 16;
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:"Failsafe Triggers";
            color: "#FFFFFF"; x: 30; y: 30;
            font.pixelSize: 18; font.bold: true }

        //  Throttle PWM threshold

        Rectangle { x:30; y:72;
            width: 673; height: 60;
            color: "#2A2A2A"
             radius: 6
             // border.color: "#9D9D9D"
             // border.width: 0.5

        Text {
            text:"Throttle PWM threshold";
            color: "#FFFFFF"; x: 62; y: 18;
            font.pixelSize: 16; font.bold: true }

        Rectangle { x:576; y:12;
            width: 79; height: 37;
            color: "#3D3B3B"
            radius: 6
            border.color: "#8F8F8F"
            border.width: 1

            Text {
                text:" 950 ";
                color: "#FFFFFF"; x: 8; y: 6.5;
                font.pixelSize: 15; font.bold: true }
        }
        }

        // GCS failsafe----------

        Rectangle { x:30; y:156;
            width: 673; height: 60;
            color: "#2A2A2A"
             radius: 6
             // border.color: "#9D9D9D"
             // border.width: 0.5

        Text {
            text:"GCS failsafe";
            color: "#FFFFFF"; x: 62; y: 18;
            font.pixelSize: 16; font.bold: true }

        }
    }

        //  -------------  Return to Lanch -------------

            Rectangle { x:810; y: 496;
                width: 733; height: 234;
                color: "#3D3B3B"
                 radius: 16;
                 border.color: "#9D9D9D"
                 border.width: 1

            Text { text:"Return to Lanch ";
                color: "#FFFFFF"; x: 30; y: 30;
                font.pixelSize: 18; font.bold: true }


            // Return at current altitude 1

            Rectangle { x:30; y:72;
                width: 673; height: 60;
                color: "#2A2A2A"
                 radius: 6
                 // border.color: "#9D9D9D"
                 // border.width: 0.5



            Text {
                text:"Return at current altitude";
                color: "#FFFFFF"; x: 62; y: 18;
                font.pixelSize: 16; font.bold: true }

            }

            //  Return at current altitude 2--------

            Rectangle { x:30; y:156;
                width: 673; height: 60;
                color: "#2A2A2A"
                 radius: 6
                 // border.color: "#9D9D9D"
                 // border.width: 0.5

            Text {
                text:"Return at current altitude";
                color: "#FFFFFF"; x: 62; y: 18;
                font.pixelSize: 16; font.bold: true }

            Rectangle { x:530; y:12;
                width: 125; height: 37;
                color: "#3D3B3B"
                radius: 6
                border.color: "#8F8F8F"
                border.width: 1

                Text {
                    text:"-1.000            m  ";
                    color: "#FFFFFF"; x: 8; y: 6.5;
                    font.pixelSize: 15; font.bold: true }
            }
        }

            } //////



            Rectangle {
                width:1490; height: 300; x:50 ; y: 754; color: "#3D3B3B";radius: 16; border.width: 1; border.color: "#9D9D9D"


            Text { text:"Arm Checks";
                color: "#FFFFFF";
                x: 30; y: 30;
                font.pixelSize: 18;font.bold: true }

            Text { text:"Warning: Turning off arming checks can lead to loss of Vehicle control.";
                color: "#BA331E";
                x: 462; y: 26;
                font.pixelSize: 16;font.bold: true }


            // Barometer

            Rectangle {
                x:30; y:72;
                width: 228; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Row {
                     anchors.centerIn: parent
                     spacing: 30 // checkbox ile text arasında boşluk

                     CheckBox {
                         width: 2; height: 2 // daha uygun boyutlar, küçük ama tıklanabilir
                         checked: false // başlangıçta işaretli değil
                         anchors.verticalCenter: parent.verticalCenter // checkbox'ı dikey olarak ortalar

                         // Tıklanabilirlik için MouseArea eklemek gerekebilir:
                         MouseArea {
                             anchors.fill: parent
                             onClicked: {
                                 checked = !checked; // tıklama ile değişim
                             }
                         }
                     }

                Text {
                    text:"Barometer";
                    color: "#FFFFFF"; x: 62; y: 6;
                    font.pixelSize: 16; font.bold: true }
                anchors.verticalCenter: parent.verticalCenter // metni de dikey olarak ortalar

            }}

            // RC Channels

            Rectangle {
                x:30; y:148;
                width: 228; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"RC Channels";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            // Mission

            Rectangle {
                x:30; y:226;
                width: 228; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Mission";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            // Compass

            Rectangle {
                x:270; y:72;
                width: 228; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Compass";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            // Board Voltage

            Rectangle {
                x:270; y:148;
                width: 228; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Board Voltage";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            // FFT

            Rectangle {
                x:270.5; y:226;
                width: 228; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"FFT";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            //  GPS Lock

            Rectangle {
                x:510; y:72;
                width: 228.5; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"GPS Lock";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            //  Battery Level

            Rectangle {
                x:510; y:148;
                width: 228.5; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Battery Level";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            //  GPS Configuration

            Rectangle {
                x:511; y:226;
                width: 224; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"GPS Configuration";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            // INS

            Rectangle {
                x:750.5; y:72;
                width: 228.5; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"INS";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            // Airspeed

            Rectangle {
                x:750.5; y:148                                                                                                                                             ;
                width: 228.5; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Airspeed";
                    color: "#FFFFFF"; x: 62; y: 16;
                    font.pixelSize: 16; font.bold: true }
            }

            // System

            Rectangle {
                x:747; y: 226                                                                                                                                          ;
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"System"
                    color: "#FFFFFF"; x: 62; y: 16
                    font.pixelSize: 16; font.bold: true }
            }

            // Parameters

            Rectangle {
                x:991; y: 72                                                                                                                                          ;
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Parameters"
                    color: "#FFFFFF"; x: 62; y: 16
                    font.pixelSize: 16; font.bold: true }
            }

            // Logging Avaiable

            Rectangle {
                x:991; y: 148                                                                                                                                          ;
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Logging Avaiable"
                    color: "#FFFFFF"; x: 62; y: 16
                    font.pixelSize: 16; font.bold: true }
            }

            // Rangefinder

            Rectangle {
                x:983.5; y: 226                                                                                                                                          ;
                width: 209.5; height: 56
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Rangefinder"
                    color: "#FFFFFF"; x: 62; y: 16
                    font.pixelSize: 16; font.bold: true }
            }

            // Camera

            Rectangle {
                x:1231.5; y: 72                                                                                                                                         ;
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Camera"
                    color: "#FFFFFF"; x: 62; y: 16
                    font.pixelSize: 16; font.bold: true }
            }

            // AuxAuth

            Rectangle {
                x:1231.5; y: 148                                                                                                                                         ;
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"AuxAuth"
                    color: "#FFFFFF"; x: 62; y: 16
                    font.pixelSize: 16; font.bold: true }
            }

            //  Hardware Safety Switch

            Rectangle {
                x:1205; y: 226                                                                                                                                       ;
                width: 255; height: 56
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1

                Text {
                    text:"Hardware Safety Switch"
                    color: "#FFFFFF"; x: 62; y: 16
                    font.pixelSize: 16; font.bold: true }
            }


        }



}
