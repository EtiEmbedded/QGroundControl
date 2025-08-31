import QtQuick
import QtQuick.Controls



Rectangle {
    width: 1560
    height: 1080
    color: "black"   // Radio səhifəsi: tam qara


Text {
    text: "Radio Configuration"
    color: "white"
    x: 35; y: 40
    font.pixelSize: 26; font.bold: true
    }

Text {
    text: "Configure your RC transmitter channels and settings"
    color: "#E8E8E8"
    x: 35; y: 86
    font.pixelSize: 16
}

// Altitude Controls

Rectangle { x: 35;   y: 176; width: 962; height: 483; color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "white"

    Text { text:"Altitude Control"; color: "white"; x: 30; y: 30; font.pixelSize: 18 }

    Column {
        anchors.centerIn: parent
        spacing: 50

    Repeater {
        model: 4


        Slider {
                id: s
                width: 902
                height: 40
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
}


// Skip - > Cancel - > Calibrate
Rectangle { x: 35;   y: 674.33; width: 196; height: 45; color: "#3D3B3B"; radius: 6; border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Skip"; color: "#E8E8E8"; anchors.centerIn: parent; font.pixelSize: 16 }


}

Rectangle { x: 255;   y: 674.33; width: 196; height: 45; color: "#3D3B3B"; radius: 6; border.width: 0.5; border.color: "#9D9D9D"

     Text { text:"Cancel"; color: "#E8E8E8"; anchors.centerIn: parent; font.pixelSize: 16 }


}

Rectangle { x: 475;   y: 674.33; width: 196; height: 45; color: "#3D3B3B"; radius: 6; border.width: 0.5; border.color: "#9D9D9D"

     Text { text:"Calibrate"; color: "#E8E8E8"; anchors.centerIn: parent; font.pixelSize: 16 }


}

// Transmitter Mode

Rectangle { x: 1021;   y: 176; width: 504; height: 148; color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Transmitter Mode"; color: "white"; x:30; y:30;  font.pixelSize: 18; font.weight: Font.DemiBold }

    ButtonGroup { id: modeGroup }

    RadioButton {
        id: m1
        text: "Mode 1"
        x: 56; y: 84
        spacing: 12
        checked: true
        ButtonGroup.group: modeGroup

        indicator: Rectangle {
            id: ind1
            implicitWidth: 20; implicitHeight: 20
            radius: width/2
            border.width: 2
            border.color: "#A9A9A9"
            color: m1.checked ? "#A9A9A9" : "transparent"
            anchors.verticalCenter: parent.verticalCenter
        }
        contentItem: Text {
            text: m1.text
            color: "white"
            verticalAlignment: Text.AlignVCenter
            leftPadding: ind1.implicitWidth + m1.spacing
        }
    }

    RadioButton {
        id: m2
        text: "Mode 2"
        x: 167; y: 84
        spacing: 12
        ButtonGroup.group: modeGroup

        indicator: Rectangle {
            id: ind2
            implicitWidth: 20; implicitHeight: 20
            radius: width/2
            border.width: 2
            border.color: "#A9A9A9"
            color: m2.checked ? "#A9A9A9" : "transparent"
            anchors.verticalCenter: parent.verticalCenter
        }
        contentItem: Text {
            text: m2.text
            color: "white"
            verticalAlignment: Text.AlignVCenter
            leftPadding: ind2.implicitWidth + m2.spacing
        }

    }
}

// Radio Setup

Rectangle { x: 35;   y: 796; width: 1490; height: 174; color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Radio Setup"; color: "white"; x:30; y:30;  font.pixelSize: 18; font.weight: Font.DemiBold }

        // Spektrum Bind
    Rectangle { x:30; y:84; width:173; height: 45; color: "#4E4E4E"; radius: 6; border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Spektrum Bind"; color: "#E8E8E8"; anchors.centerIn: parent; font.pixelSize: 16; font.weight: Font.DemiBold }
    }

        // CRSF Bind
    Rectangle { x:218; y:84; width:173; height: 45; color: "#4E4E4E"; radius: 6; border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"CRSF Bind"; color: "#E8E8E8"; anchors.centerIn: parent; font.pixelSize: 16; font.weight: Font.DemiBold }
    }

        // Copy Trims
    Rectangle { x:406; y:84; width:173; height: 45; color: "#4E4E4E"; radius: 6; border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Copy Trims"; color: "#E8E8E8"; anchors.centerIn: parent; font.pixelSize: 16; font.weight: Font.DemiBold }
    }


    }

// Channel Monitor

Rectangle { x: 1021;   y: 348; width: 504; height: 424; color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Channel Monitor"; color: "white"; x:30; y:30;  font.pixelSize: 18; font.weight: Font.DemiBold }
    Image {
            source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Joystick_Image.svg"
            anchors.centerIn: parent
            width: 444
            height: 315.6
        }

    }

}









