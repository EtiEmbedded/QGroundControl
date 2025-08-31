import QtQuick
import QtQuick.Controls

Rectangle {
    width: 536
    height: 590
    color: "#2A2A2A"
    radius: 8
    visible: rcSettingsVisible
    anchors.centerIn: parent
    anchors.verticalCenterOffset: 420

    Column {
        spacing: 8
        anchors.fill: parent
        anchors.margins: 0

        // 1. Title Bar
        Rectangle {
            width: parent.width
            height: 39
            color: "#3D3B3B"
            radius: 4

            Text {
                text: "Failsafe Configuration"
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 14
                font.bold: true
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
                    onClicked: {
                        settingsLoader.source = ""
                    }
                }
            }
        }

        // 2. Failsafe Mode
        Rectangle {
            width: parent.width
            height: 44
            color: "#3D3B3B"
            radius: 4

            Row {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 10

                Text {
                    text: "Failsafe Mode"
                    color: "white"
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                }

                Rectangle {
                    width: 120
                    height: 24
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    anchors.right: parent.right

                    ComboBox {
                        anchors.fill: parent
                        model: ["Disabled", "Enabled"]
                        font.pixelSize: 12
                    }
                }
            }
        }

        // 3. Failsafe Timeout + Slider
        Rectangle {
            width: parent.width
            height: 110
            color: "#3D3B3B"
            radius: 4

            Column {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 8

                Row {
                    spacing: 10
                    width: parent.width

                    Text {
                        text: "Failsafe Timeout"
                        color: "white"
                        font.pixelSize: 14
                        verticalAlignment: Text.AlignVCenter
                    }

                    Rectangle {
                        width: 60
                        height: 24
                        radius: 4
                        color: "#2A2A2A"
                        border.color: "#666666"
                        anchors.right: parent.right

                        Text {
                            text: timeoutSlider.value.toFixed(0) + " m"
                            anchors.centerIn: parent
                            color: "white"
                            font.pixelSize: 12
                        }
                    }
                }

                Slider {
                    id: timeoutSlider
                    width: parent.width - 40
                    from: 0
                    to: 100
                    value: 50
                    stepSize: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        // 4. Failsafe PWM
        Rectangle {
            width: parent.width
            height: 44
            color: "#3D3B3B"
            radius: 4

            Row {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 10

                Text {
                    text: "Failsafe PWM"
                    color: "white"
                    font.pixelSize: 14
                }

                Rectangle {
                    width: 80
                    height: 24
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    anchors.right: parent.right

                    TextInput {
                        anchors.fill: parent
                        text: "900"
                        color: "white"
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                    }
                }
            }
        }

        // 5. Start Calibration
        Rectangle {
            width: parent.width
            height: 39
            color: "#3D3B3B"
            radius: 4

            Row {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 10

                Text {
                    text: "Start Calibration"
                    color: "#CCCCCC"
                    font.pixelSize: 14
                }

                Rectangle {
                    width: 100
                    height: 24
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    anchors.right: parent.right

                    Text {
                        text: "Ready"
                        anchors.centerIn: parent
                        color: "white"
                        font.pixelSize: 12
                    }
                }
            }
        }

        // 6–10. Labels sağda
        Repeater {
            model: [
                "Channels Detected",
                "Channel Mapping",
                "RSSI Settings",
                "RSSI Input",
                "RSSI Channel"
            ]

            delegate: Rectangle {
                width: parent.width
                height: 44
                color: "#3D3B3B"
                radius: 4

                Row {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 10

                    Text {
                        text: modelData
                        color: "white"
                        font.pixelSize: 14
                    }

                    Rectangle {
                        width: 80
                        height: 24
                        radius: 4
                        color: "#2A2A2A"
                        border.color: "#666666"
                        anchors.right: parent.right

                        Text {
                            text: modelData === "Channels Detected" ? "8" :
                                  modelData.includes("Channel") ? "CH8" :
                                  "Analog"
                            anchors.centerIn: parent
                            color: "white"
                            font.pixelSize: 12
                        }
                    }
                }
            }
        }
    }
}
