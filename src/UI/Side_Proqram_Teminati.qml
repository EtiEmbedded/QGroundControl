import QtQuick
import QtQuick.Controls



Rectangle {
    width: 1560
    height: 1080
    color: "black"

    // Firmware Configuration

        Text {
            text: "Firmware Configuration";
            color: "#FFFFFF";
            x: 50; y: 40;
            font.pixelSize: 26; font.bold:  true

            }

        // Device Firmware Settings

        Text {
            text: "Device Firmware Settings";
            color: "#E8E8E8";
            x: 50; y: 85;
            font.pixelSize: 16; font.bold: true
        }

        Text {
            text: "Advanced mode";
            color: "#FFFFFF";
            x: 1300; y: 156;
            font.pixelSize: 16; font.bold: true
        }

        Switch {
            id: toggleButton
            x: 1470
            y: 159
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


        Rectangle {
            width:1488; height: 1;
            x:52
            y: 208
            border.width: 1; border.color: "#FFFFFF"
        }

        Rectangle {
            width:1490; height: 132;
            x:52
            y: 234
            color: "#3D3B3B";
            radius: 16
            border.width: 1; border.color: "#9D9D9D"



        Text {
            text:"QGroundControl can upgrade the firmware on Pixhawk devices and SiK Radios."
            color: "#FFFAFA";
            x: 30; y: 30;
            font.pixelSize: 16;font.bold: true }

        Text {
            text:"All QGroundControl connections to vehicles must be   "
            color: "#FFFAFA";
            x: 39.86; y: 54;
            font.pixelSize: 16;font.bold: true }
        }

        Text {
            text:"disconnected"
            color: "#E7391E";
            x: 502.36; y: 288;
            font.pixelSize: 16;font.bold: true }


        Text {
            text:" prior to firmware upgrade."
            color: "#FFFFFF";
            x: 612.08; y: 288;
            font.pixelSize: 16;font.bold: true }

        Text {
            text:" Please unplug your Pixhawk and/or Radio from USB."
            color: "#E7391E";
            x: 86.86; y: 312;
            font.pixelSize: 16;font.bold: true }




}
