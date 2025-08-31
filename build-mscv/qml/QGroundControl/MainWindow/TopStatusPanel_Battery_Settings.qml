import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


Rectangle {
    width: 536
    height: 676
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
                text: "Low Voltage Failsafe"
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
                    text: "Vehicle Action"
                    color: "white"
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                }

                Rectangle {
                    width: 72
                    height: 28
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    anchors.right: parent.right

                    ComboBox {
                        id: actionComboBox
                        width: 72
                        height: 28
                        model: ["None", "Return", "Land", "RTL"]

                        font.pixelSize: 14
                        font.bold: false
                        padding: 6

                        // Ana görünüş
                        background: Rectangle {
                            radius: 4
                            color: "#3D3B3B"  // Tünd fon
                            border.color: "#888888"  // Zəif haşiyə
                            border.width: 1
                        }
                        contentItem: Text {
                                text: actionComboBox.displayText
                                color: "white"   // ✅ Burada rəng ağ edilir
                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignLeft
                                elide: Text.ElideRight
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 8
                                font.pixelSize: 14
                            }
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

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 8

                // Üst sıra: mətn solda, dəyər sağda
                RowLayout {
                    Layout.fillWidth: true
                    spacing: 10

                    Text {
                        text: "Voltage Trigger"
                        color: "white"
                        font.pixelSize: 14
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                    }

                    // Spacer – sağdakı qutunu kənara itələyir
                    Item { Layout.fillWidth: true }

                    Rectangle {
                        width: 60
                        height: 24
                        radius: 4
                        color: "#2A2A2A"
                        border.color: "#666666"
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignRight

                        Text {
                            text: fsTimeoutSlider.value.toFixed(0) + " m"
                            anchors.centerIn: parent
                            color: "white"
                            font.pixelSize: 12
                        }
                    }
                }

                // Slider yazının aşağısında, tam ortada (üfüqi)
                Slider {
                    id: fsTimeoutSlider
                    from: 0
                    to: 100
                    value: 50
                    stepSize: 1
                    Layout.fillWidth: true
                }
            }
        }




        // 4. Failsafe PWM
        Rectangle {
            width: parent.width
            height: 110
            color: "#3D3B3B"
            radius: 4

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 8

                // Üst sıra: mətn solda, dəyər sağda
                RowLayout {
                    Layout.fillWidth: true
                    spacing: 10

                    Text {
                        text: "mAh Trigger-disabled"
                        color: "white"
                        font.pixelSize: 14
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                    }

                    // Spacer – sağdakı qutunu kənara itələyir
                    Item { Layout.fillWidth: true }

                    Rectangle {
                        width: 60
                        height: 24
                        radius: 4
                        color: "#2A2A2A"
                        border.color: "#666666"
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignRight

                        Text {
                            text: fsrTimeoutSlider.value.toFixed(0) + " m"
                            anchors.centerIn: parent
                            color: "white"
                            font.pixelSize: 12
                        }
                    }
                }

                // Slider yazının aşağısında, tam ortada (üfüqi)
                Slider {
                    id: fsrTimeoutSlider
                    from: 0
                    to: 100
                    value: 50
                    stepSize: 1
                    Layout.fillWidth: true
                }
            }
        }

        // 5. Start Calibration
        Rectangle {
            width: parent.width
            height: 39
            color: "#3D3B3B"
            radius: 4

            Text {
                text: "Critical Voltage Failsafe"
                color: "#CCCCCC"
                font.pixelSize: 14
                anchors.centerIn: parent
            }
        }


        // 6– Label
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
                    text: "Vehicle Action"
                    color: "white"
                    font.pixelSize: 14
                    verticalAlignment: Text.AlignVCenter
                }

                Rectangle {
                    width: 72
                    height: 28
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    anchors.right: parent.right

                    ComboBox {
                        id: action1ComboBox
                        width: 72
                        height: 28
                        model: ["None", "Return", "Land", "RTL"]

                        font.pixelSize: 14
                        font.bold: false
                        padding: 6

                        // Ana görünüş
                        background: Rectangle {
                            radius: 4
                            color: "#3D3B3B"  // Tünd fon
                            border.color: "#888888"  // Zəif haşiyə
                            border.width: 1
                        }
                        contentItem: Text {
                                text: action1ComboBox.displayText
                                color: "white"   // ✅ Burada rəng ağ edilir
                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignLeft
                                elide: Text.ElideRight
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 8
                                font.pixelSize: 14
                            }
                    }
                }
            }
        }

    // 7. Failsafe PWM
    Rectangle {
        width: parent.width
        height: 110
        color: "#3D3B3B"
        radius: 4

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 8

            // Üst sıra: mətn solda, dəyər sağda
            RowLayout {
                Layout.fillWidth: true
                spacing: 10

                Text {
                    text: "Voltage Trigger"
                    color: "white"
                    font.pixelSize: 14
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                }

                // Spacer – sağdakı qutunu kənara itələyir
                Item { Layout.fillWidth: true }

                Rectangle {
                    width: 60
                    height: 24
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignRight

                    Text {
                        text: fs2TimeoutSlider.value.toFixed(0) + " m"
                        anchors.centerIn: parent
                        color: "white"
                        font.pixelSize: 12
                    }
                }
            }

            // Slider yazının aşağısında, tam ortada (üfüqi)
            Slider {
                id: fs2TimeoutSlider
                from: 0
                to: 100
                value: 50
                stepSize: 1
                Layout.fillWidth: true
            }
        }
    }
    // 8. Failsafe PWM
    Rectangle {
        width: parent.width
        height: 110
        color: "#3D3B3B"
        radius: 4

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 8

            // Üst sıra: mətn solda, dəyər sağda
            RowLayout {
                Layout.fillWidth: true
                spacing: 10

                Text {
                    text: "mAh Trigger-disabled"
                    color: "white"
                    font.pixelSize: 14
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                }

                // Spacer – sağdakı qutunu kənara itələyir
                Item { Layout.fillWidth: true }

                Rectangle {
                    width: 60
                    height: 24
                    radius: 4
                    color: "#2A2A2A"
                    border.color: "#666666"
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignRight

                    Text {
                        text: fs3TimeoutSlider.value.toFixed(0) + " m"
                        anchors.centerIn: parent
                        color: "white"
                        font.pixelSize: 12
                    }
                }
            }

            // Slider yazının aşağısında, tam ortada (üfüqi)
            Slider {
                id: fs3TimeoutSlider
                from: 0
                to: 100
                value: 50
                stepSize: 1
                Layout.fillWidth: true
        }
      }
    }
  }
}
