import QtQuick
import QtQuick.Controls

Rectangle {
    width: 376
    height: 153
    color: "#2A2A2A"
    radius: 8
    anchors.centerIn: parent
    anchors.verticalCenterOffset: 420
    visible: returnToLaunchVisible

    Column {
        spacing: 6
        anchors.fill: parent
        anchors.margins: 0

        // ==== 1. Title Bar (Return to Launch) ====
        Rectangle {
            width: parent.width
            height: 39
            color: "#3D3B3B"
            radius: 4

            Text {
                text: "Return to Launch"
                color: "white"
                font.pixelSize: 14
                font.bold: true
                anchors.centerIn: parent
            }

            Image {
                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/TopStatusPanel_Cixis.svg"
                width: 20
                height: 20
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: settingsLoader.source = ""
                }
            }
        }

        // ==== 2. Return at hissəsi ====
        Rectangle {
            width: parent.width
            height: 44
            color: "#3D3B3B"
            radius: 4

            Row {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 8

                Text {
                    text: "Return at"
                    color: "white"
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                }

                ComboBox {
                    id: returnAltitudeCombo
                    model: ["Current altitude", "Specified altitude"]
                    width: 140
                    height: 24
                    font.pixelSize: 12

                    background: Rectangle {
                        color: "#2A2A2A"
                        radius: 4
                        border.color: "#666666"
                    }

                    contentItem: Text {
                        text: returnAltitudeCombo.currentText
                        color: "white"
                        font.pixelSize: 12
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 6
                    }
                }

                Rectangle {
                    width: 70
                    height: 24
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    border.width: 1

                    TextInput {
                        anchors.fill: parent
                        text: "0.00"
                        color: "white"
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        verticalAlignment: TextInput.AlignVCenter
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                    }
                }

                Text {
                    text: "m"
                    color: "white"
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }

        // ==== 3. Edit Displayed Flight Modes Toggle ====
        Rectangle {
            width: parent.width
            height: 44
            color: "#3D3B3B"
            radius: 4

            Row {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 8

                Text {
                    text: "Edit Displayed Flight Modes"
                    color: "white"
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                }

                Rectangle {
                    id: toggleBackground
                    width: 36
                    height: 20
                    radius: 10
                    anchors.right: parent.right
                    color: toggle.checked ? "#4CD964" : "#888888"

                    Rectangle {
                        width: 16
                        height: 16
                        radius: 8
                        color: "#2A2A2A"
                        anchors.verticalCenter: parent.verticalCenter
                        x: toggle.checked ? parent.width - width - 2 : 2

                        Behavior on x {
                            NumberAnimation { duration: 150 }
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: toggle.checked = !toggle.checked
                        cursorShape: Qt.PointingHandCursor
                    }
                }

                QtObject {
                    id: toggle
                    property bool checked: false
                }
            }
        }
    }

}
