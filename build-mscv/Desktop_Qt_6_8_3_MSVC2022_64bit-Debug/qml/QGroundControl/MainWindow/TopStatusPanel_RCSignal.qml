import QtQuick
import QtQuick.Controls


Rectangle {
    anchors.fill: parent
    visible: rcSignalPopupVisible
    color: "#00000080"
    z: 100

    Rectangle {
        width: 376
        height: 252
        color: "#2A2A2A"
        radius: 8
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 420

        // ==== Title bar ====
        Rectangle {
            width: parent.width
            height: 39
            color: "#3D3B3B"
            radius: 4
            anchors.top: parent.top

            Text {
                anchors.centerIn: parent
                text: "RC Signals"
                color: "white"
                font.pixelSize: 14
                font.bold: true
            }

            Image {
                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/TopStatusPanel_Settings.svg"
                width: 20
                height: 20
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                fillMode: Image.PreserveAspectFit
                visible: true

                MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            settingsLoader.source = "TopStatusPanel_RCSignal_Settings.qml"
                }
              }


            }


            // Sağ icon (çıxış)
            Image {
                source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/TopStatusPanel_Cixis.svg"
                width: 20
                height: 20
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 10
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        settingsLoader.source = ""
                    }
                }
            }
        }

        // ==== RC məlumatları ====
        Column {
            spacing: 6
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 12

            ListModel {
                id: rcSignalModel
                ListElement { label: "Status"; value: "Connected" }
                ListElement { label: "RSSI"; value: "92%" }
                ListElement { label: "Channels"; value: "16" }
                ListElement { label: "Failsafe"; value: "No" }
            }

            Repeater {
                model: rcSignalModel
                delegate: Rectangle {
                    width: parent.width
                    height: 44
                    color: "#3D3B3B"
                    radius: 4

                    Item {
                        anchors.fill: parent
                        anchors.margins: 12

                        // Label (solda)
                        Text {
                            text: model.label
                            color: "white"
                            font.pixelSize: 14
                            verticalAlignment: Text.AlignVCenter
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                        }

                        // Value çərçivəsi (sağda)
                        Rectangle {
                            width: 80
                            height: 24
                            radius: 4
                            color: "#2A2A2A"
                            border.color: "#666666"
                            border.width: 1
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right

                            Text {
                                text: model.value
                                color: "white"
                                font.pixelSize: 12
                                anchors.centerIn: parent
                            }
                        }
                    }
                }
            }
        }
    }
}
