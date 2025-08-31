import QtQuick
import QtQuick.Controls

Rectangle {
    id: topStatusPanel
    height: 100
    width: parent.width
    color: "black"
    z: 1

    signal minimizeRequested()
    signal exitRequested()

    // Exit və Minimize düymələri sağ-yuxarıda
    Row {
        id: windowControls
        spacing: 8
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: 3
        anchors.rightMargin: 12

        // Minimize button
        Rectangle {
            width: 20
            height: 20
            radius: 6
            color: "transparent"

            Image {
                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/MINIMIZE.svg"
                anchors.centerIn: parent
                width: 18
                height: 18
                fillMode: Image.PreserveAspectFit
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: topStatusPanel.minimizeRequested()
            }
        }

        // Exit button
        Rectangle {
            width: 20
            height: 20
            radius: 6
            color: "transparent"

            Image {
                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/exit.svg"
                anchors.centerIn: parent
                width: 20
                height: 20
                fillMode: Image.PreserveAspectFit
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: topStatusPanel.exitRequested()
            }
        }
    }

    Row {
        id: statusRow
        anchors.fill: parent
        anchors.margins: 16
        spacing: 24

        function createBlock(icon, label, value) {
            const isGps = (label === "GPS")
            const isBattery = (label === "Batareya")
            const isFlightMode = (label === "Uçuş Rejimi")
            const isRcSignal = (label === "RC Siqnalı")

            return Qt.createQmlObject(`
                import QtQuick 2.15
                Rectangle {
                    width: (${topStatusPanel.width - 200}) / 5
                    height: ${topStatusPanel.height - 30}
                    radius: 8
                    color: "#2b2b2b"

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            if (${isGps}) {
                               settingsLoader.source = "TopStatusPanel_GPS.qml"
                            } else if (${isBattery}) {
                               settingsLoader.source = "TopStatusPanel_Battery.qml"
                            } else if (${isFlightMode}) {
                                settingsLoader.source = "TopStatusPanel_UcusRejimi.qml"
                            } else if (${isRcSignal}) {
                                settingsLoader.source = "TopStatusPanel_RCSignal.qml"
                            }
                        }
                    }

                    Column {
                        anchors.centerIn: parent
                        spacing: 4
                        anchors.margins: 8

                        Row {
                            spacing: 8
                            Image {
                                source: "${icon}"
                                width: 30
                                height: 30
                                fillMode: Image.PreserveAspectFit
                            }
                            Text {
                                text: "${label}"
                                color: "white"
                                font.pixelSize: 14
                            }
                        }

                        Text {
                            text: "${value}"
                            color: "#aaaaaa"
                            font.pixelSize: 14
                        }
                    }
                }
            `, statusRow, "DynamicBlock")
        }

        Component.onCompleted: {
            statusRow.children.push(createBlock("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/GPS.svg", "GPS", "03:15:31"))
            statusRow.children.push(createBlock("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Battery.svg", "Batareya", "78%"))
            statusRow.children.push(createBlock("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Flight Mode.svg", "Uçuş Rejimi", "Auto"))
            statusRow.children.push(createBlock("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/RC Signal.svg", "RC Siqnalı", "Excellent"))
            statusRow.children.push(createBlock("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Message.svg", "Message", ""))
        }

    }

}
