import QtQuick
import QtQuick.Controls


// ====================================================== GPS Settings =======================================================================
Rectangle {
    width: 536
    height: 385
    color: "#2A2A2A"
    radius: 8
    anchors.centerIn: parent
    anchors.verticalCenterOffset: 420
    visible: gpsSettingsVisible

    Column {
        spacing: 6
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 0

        // 1. RTK GPS Settings (Başlıq və çıxış iconu burada yerləşir)
        Rectangle {
            width: 536
            height: 39
            color: "#3D3B3B"
            radius: 4

            // Başlıq mətni
            Text {
                text: "RTK GPS Settings"
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 14
                font.bold: true
            }

            // Çıxış iconu
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

        // 2. AutoConnect hissəsi
        Rectangle {
            width: 536
            height: 44
            color: "#3D3B3B"
            radius: 4

            Text {
                text: "AutoConnect"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 12
                color: "white"
                font.pixelSize: 14
            }
            // Toggle düyməsi
             Rectangle {
                 id: autoConnectToggle
                 width: 36
                 height: 20
                 radius: 10
                 color: autoConnectSwitch.checked ? "#4CD964" : "#888888"
                 border.color: "#AAAAAA"
                 anchors.verticalCenter: parent.verticalCenter
                 anchors.right: parent.right
                 anchors.rightMargin: 12

                 // Daxili dairə (indicator)
                 Rectangle {
                     width: 16
                     height: 16
                     radius: 8
                     color: "#2A2A2A"
                     anchors.verticalCenter: parent.verticalCenter
                     x: autoConnectSwitch.checked ? parent.width - width - 2 : 2
                     Behavior on x { NumberAnimation { duration: 150 } }
                 }

                 // Funksiya bağlantısı (checked dəyəri)
                 MouseArea {
                     anchors.fill: parent
                     onClicked: autoConnectSwitch.checked = !autoConnectSwitch.checked
                 }
             }

             // Switch vəziyyətini saxlayan komponent
             property alias autoConnectChecked: autoConnectSwitch.checked

             QtObject {
                 id: autoConnectSwitch
                 property bool checked: false
             }
         }


        // 3. Survey-In və Specify position seçimləri
        Rectangle {
            width: 536
            height: 44
            color: "#3D3B3B"
            radius: 4

            property int selectedIndex: 0 // 0 = Survey-In, 1 = Specify position

            Row {
                spacing: 24
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 16

                // Survey-In
                Row {
                    spacing: 6
                    Rectangle {
                        width: 16
                        height: 16
                        radius: 8
                        color: "transparent"
                        border.color: "white"
                        border.width: 1

                        // yalnız seçiləndə görünən daxili dairə
                        Rectangle {
                            width: 8
                            height: 8
                            radius: 4
                            anchors.centerIn: parent
                            color: "#888888"
                            visible: selectedIndex === 0
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: selectedIndex = 0
                            cursorShape: Qt.PointingHandCursor
                        }
                    }

                    Text {
                        text: "Survey-In"
                        color: "white"
                        font.pixelSize: 14
                        verticalAlignment: Text.AlignVCenter
                    }
                }

                // Specify position
                Row {
                    spacing: 6
                    Rectangle {
                        width: 16
                        height: 16
                        radius: 8
                        color: "transparent"
                        border.color: "white"
                        border.width: 1

                        // yalnız seçiləndə görünən daxili dairə
                        Rectangle {
                            width: 8
                            height: 8
                            radius: 4
                            anchors.centerIn: parent
                            color: "#888888"
                            visible: selectedIndex === 1
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: selectedIndex = 1
                            cursorShape: Qt.PointingHandCursor
                        }
                    }

                    Text {
                        text: "Specify position"
                        color: "white"
                        font.pixelSize: 14
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }




        // 4 cü hissə
        Rectangle {
            width: 536
            height: 110
            color: "#3D3B3B"
            radius: 4

            property real minVal: 0.2
            property real maxVal: 1.0
            property int tickCount: 9

            Column {
                anchors.fill: parent
                anchors.margins: 12
                spacing: 6

                // Başlıq
                Text {
                    text: "Accuracy (u - blox only)"
                    color: "white"
                    font.pixelSize: 14
                }

                // Slider və ölçəgöstəricilər
                Item {
                    id: sliderArea
                    width: parent.width
                    height: 60

                    // Slider-in özəyi
                    Slider {
                        id: accuracySlider
                        width: parent.width
                        anchors.top: parent.top
                        from: minVal
                        to: maxVal
                        stepSize: 0.01
                        value: 0.64
                        anchors.horizontalCenter: parent.horizontalCenter

                        background: Rectangle {
                            height: 2
                            color: "#aaaaaa"
                            radius: 1
                            anchors.verticalCenter: parent.verticalCenter
                            width: parent.width
                        }

                        handle: Rectangle {
                            width: 12
                            height: 12
                            radius: 6
                            color: "white"
                            border.color: "#2A2A2A"
                        }

                        onValueChanged: {
                            tooltipLabel.text = accuracySlider.value.toFixed(2) + " m"
                        }
                    }

                    // Tooltip dəyər baloncuğu
                    Rectangle {
                        id: tooltipBox
                        width: 60
                        height: 24
                        radius: 4
                        color: "#2A2A2A"
                        border.color: "#666666"
                        anchors.horizontalCenter: accuracySlider.left
                        anchors.horizontalCenterOffset: (accuracySlider.width * ((accuracySlider.value - minVal) / (maxVal - minVal))) - (width / 2)
                        anchors.bottom: accuracySlider.top
                        anchors.bottomMargin: 6

                        Text {
                            id: tooltipLabel
                            anchors.centerIn: parent
                            text: accuracySlider.value.toFixed(2) + " m"
                            color: "white"
                            font.pixelSize: 12
                        }
                    }

                    // Alt xəttlər və dəyərlər
                    Row {
                        id: tickRow
                        spacing: (sliderArea.width - 10) / (tickCount - 1)
                        anchors.top: accuracySlider.bottom
                        anchors.topMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter

                        Repeater {
                            model: tickCount
                            delegate: Column {
                                spacing: 4
                                width: 1
                                Rectangle {
                                    width: 1
                                    height: 8
                                    color: "white"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                                Text {
                                    text: (minVal + index * ((maxVal - minVal) / (tickCount - 1))).toFixed(1)
                                    color: "white"
                                    font.pixelSize: 10
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }
                        }
                    }
                }
            }
        }

        // 5. Boş hissə (110px)
        Rectangle {
            width: 536
            height: 110
            color: "#3D3B3B"
            radius: 4
        }
    }

}
