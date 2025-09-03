import QtQuick
import QtQuick.Controls

Rectangle {
    width: 1560
    height: 1080
    color: "black"

    // Başlıq
    Text {
        text: "Frame Configuration"
        color: "#FFFFFF"
        x: 50; y: 40
        font.pixelSize: 26
        font.bold: true
    }

    // İzah
    Text {
        text: "Choose an airframe configuration that matches your vehicle. You'll need to reboot after selection."
        color: "#E8E8E8"
        x: 50; y: 80
        font.pixelSize: 16
        font.bold: true
        width: parent.width - 100
        wrapMode: Text.WordWrap
    }

    // Kartların konteyneri: 4 sütun, 3 sətir
    Grid {
        id: cardsGrid
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        anchors.topMargin: 176
        rowSpacing: 24
        columnSpacing: 24
        columns: 4

        // Repeater modelini yaradın
        Repeater {
            model: [
                {text: "Hexa", imageSource: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Generic.svg", comboBoxModel: ["Generic Hexarotor + geometry", "Generic Hexarotor + geometry", "Generic Hexarotor + geometry"]},
                {text: "Tri", imageSource: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Tri.svg", comboBoxModel: ["Option A", "Option B", "Option C"]},
                {text: "Quad", imageSource: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Quard.svg", comboBoxModel: ["Choice X", "Choice Y", "Choice Z"]},
                {text: "OctaQuad", imageSource: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/OctaQuard.svg", comboBoxModel: ["Setting 1", "Setting 2", "Setting 3"]},
                {text: "Y6", imageSource: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Y6.svg", comboBoxModel: ["Selection 1", "Selection 2", "Selection 3"]},
                {text: "Plane  V-Tail", imageSource: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/PlaneV.svg", comboBoxModel: ["Pick 1", "Pick 2", "Pick 3"]},
                {text: "Standard Plane", imageSource: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/StandartPlane.svg", comboBoxModel: ["Choice Alpha", "Choice Beta", "Choice Gamma"]}
            ]

            delegate: Rectangle {
                width: 354.5
                height: 309
                color: "#3D3B3B"
                radius: 16
                border.width: 1
                border.color: "#9D9D9D"

                // Kart başlığı
                Text {
                    text: modelData.text
                    color: "#FFFFFF"
                    x: 22; y: 12.67
                    font.pixelSize: 14
                    font.bold: true
                }

                // Şəkil
                Image {
                    source: modelData.imageSource
                    width: 178.55
                    height: 196.15
                    x: 87.22
                    y: 36.67
                    fillMode: Image.PreserveAspectFit
                    smooth: true
                }

                // Seçim qutusu
                ComboBox {
                    id: returnGeneric
                    model: modelData.comboBoxModel
                    width: parent.width - 2
                    height: 52
                    x: 1
                    y: parent.height - height - 0.83
                    font.pixelSize: 12
                    font.bold: true

                    background: Rectangle {
                        color: "#3D3B3B"
                        radius: 8
                        border.color: "#9D9D9D"
                        border.width: 0.5
                    }

                    contentItem: Text {
                        text: returnGeneric.currentText
                        color: "#FFFFFF"
                        font.pixelSize: 15
                        font.bold: true
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 6
                        elide: Text.ElideRight
                    }
                }
            }
        }
    }
}
