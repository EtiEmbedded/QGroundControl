// SideMenu_Sensors_Accelerometer.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: page
    width: 1560
    height: 1080

    // Loader-dən gəlir
    property var goBack
    property bool showPanel: false      // Loader bunu true göndərir

    // (İstəsən başlıq/geri düyməsi)
    Text { text: "Accelerometer"; color: "white"; x: 35; y: 40; font.pixelSize: 26; font.bold: true }
    Rectangle {
        x: 35; y: 86; width: 480; height: 248
        color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
    }
    Rectangle {
        x: 535; y: 86; width: 480; height: 248
        color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
    }
    // ... (lazımsa başqa kontent)

    // // ==== Sənin istədiyin PANEL (451x355) ====
    // Rectangle {
    //     id: accelPanel
    //     width: 451
    //     height: 355
    //     radius: 5
    //     color: "#2A2A2A"
    //     border.width: 1
    //     border.color: "#505050"
    //     anchors.centerIn: parent
    //     visible: page.showPanel
    //     z: 9999
    //     focus: true
    //     Keys.onEscape: visible = false

    //     // A) Header 451x53, #3D3B3B, mərkəzdə 18px bold
    //     Rectangle {
    //         id: stripA
    //         width: parent.width; height: 53
    //         color: "#3D3B3B"
    //         Text {
    //             anchors.centerIn: parent
    //             text: "Calibrate Accelerometer"
    //             color: "white"
    //             font.pixelSize: 18
    //             font.bold: true
    //         }
    //         // optional X
    //         MouseArea {
    //             width: 28; height: 28
    //             anchors.right: parent.right; anchors.top: parent.top; anchors.margins: 8
    //             onClicked: accelPanel.visible = false
    //             Text { anchors.centerIn: parent; text: "\u2715"; color: "#DADADA"; font.pixelSize: 16 }
    //         }
    //     }

    //     // B) 451x44, A-dan 10px aşağı, eyni rəng
    //     Rectangle {
    //         id: stripB
    //         y: stripA.height + 10
    //         width: parent.width; height: 44
    //         color: "#3D3B3B"

    //         Text { x: 26; y: 10; text: "Autopilot Rotation:"; color: "#DCDCDC"; font.pixelSize: 16 }

    //         // Popup istifadə ETMƏYƏN "fake" Combo – qaralma olmayacaq
    //         Rectangle {
    //             width: 120; height: 26; radius: 6
    //             anchors.right: parent.right; anchors.rightMargin: 16
    //             y: 9
    //             color: "#484848"; border.width: 1; border.color: "#6A6A6A"
    //             Row {
    //                 anchors.fill: parent; anchors.margins: 0; spacing: 6
    //                 Text { text: "None"; color: "#F0F0F0"; font.pixelSize: 14; anchors.verticalCenter: parent.verticalCenter; x: 10 }
    //                 Rectangle { width: 0; height: 0 } // spacer
    //             }
    //         }
    //     }

    //     // Checkbox (26, B-dən 24px aşağı), 20x20 + 14px bold
    //     Row {
    //         x: 26
    //         y: stripB.y + stripB.height + 24
    //         spacing: 8
    //         CheckBox {
    //             id: simpleCheck
    //             indicator: Rectangle {
    //                 implicitWidth: 20; implicitHeight: 20; radius: 4
    //                 border.width: 2; border.color: "#E0E0E0"; color: "transparent"
    //                 Rectangle { anchors.centerIn: parent; width: 12; height: 12; radius: 2; visible: simpleCheck.checked; color: "#E0E0E0" }
    //             }
    //             contentItem: Item { width: 0; height: 0 }
    //         }
    //         Text { text: "Simple Accelerometer Calibration"; color: "#FFFFFF"; font.pixelSize: 14; font.bold: true; anchors.verticalCenter: parent.verticalCenter }
    //     }

    //     // Before proceeding (28,174) + bullet-lər
    //     Text { x: 28; y: 174; text: "Before proceeding:"; color: "#E0E0E0"; font.pixelSize: 14; font.bold: true }
    //     Text { x: 28; y: 196; text: "\u2022  Ensure the vehicle is on a level surface"; color: "#F0F0F0"; font.pixelSize: 14 }
    //     Text { x: 28; y: 216; text: "\u2022  Remove all external attachments";         color: "#F0F0F0"; font.pixelSize: 14 }
    //     Text { x: 28; y: 236; text: "\u2022  Keep the vehicle stationary during calibration"; color: "#F0F0F0"; font.pixelSize: 14 }

    //     // Aşağı sağ düymələr
    //     Row {
    //         spacing: 10
    //         x: width - (100 + 80 + 10) - 16
    //         y: height - 36 - 16
    //         Rectangle {
    //             width: 100; height: 36; radius: 8; color: "#505050"
    //             Text { anchors.centerIn: parent; text: "Cancel"; color: "white"; font.pixelSize: 14 }
    //             MouseArea { anchors.fill: parent; onClicked: accelPanel.visible = false }
    //         }
    //         Rectangle {
    //             width: 80; height: 36; radius: 8
    //             gradient: Gradient { GradientStop { position: 0; color: "#8A8A8A" } GradientStop { position: 1; color: "#6E6E6E" } }
    //             border.width: 1; border.color: "#9B9B9B"; opacity: 0.9
    //             Text { anchors.centerIn: parent; text: "OK"; color: "white"; font.pixelSize: 14 }
    //         }
    //     }
    // }
}
