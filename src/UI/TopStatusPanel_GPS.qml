import QtQuick
import QtQuick.Controls

Item {
    id: rootItem
    anchors.fill: parent

    // ========================= GPS Panel ==============================
    Rectangle {
        id: gpsPanel
        anchors.fill: parent
        visible: gpsPopupVisible
        color: "#00000080"
        z: 100

        Rectangle {
            width: 376
            height: 303
            color: "#2A2A2A"
            radius: 8
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 420

            // ==== Title bar ====
            Rectangle {
                id: titleBar
                width: parent.width
                height: 39
                color: "#3D3B3B"
                radius: 4
                anchors.top: parent.top

                // Sol icon (GPS_Setting)
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
                            settingsLoader.source = "TopStatusPanel_GPS_Settings.qml"
                        }
                    }
                }

                // Mərkəzdə başlıq
                Text {
                    anchors.centerIn: parent
                    text: "GPS Status"
                    color: "white"
                    font.pixelSize: 14
                    font.bold: true
                }

                // Sağ icon (GPS_Cixis)
                Image {
                    source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/TopStatusPanel_Cixis.svg"
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    fillMode: Image.PreserveAspectFit
                    visible: true

                    MouseArea {
                        anchors.fill: parent
                        onClicked: settingsLoader.source=""
                    }
                }
            }

            // ==== Məlumat sətirləri ====
            Column {
                id: gpsPanelRows
                spacing: 6
                anchors.top: titleBar.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: 12

                ListModel {
                    id: gpsTextModel
                    ListElement { label: "Satellites"; isEditable: true; value: "0" }
                    ListElement { label: "GPS Lock"; isEditable: false; value: "     No" }
                    ListElement { label: "HDOP"; isEditable: false; value: "       ..." }
                    ListElement { label: "VDOP"; isEditable: false; value: "       ..." }
                    ListElement { label: "Course Over Ground"; isEditable: false; value: "      0.0" }
                }

                Repeater {
                    model: gpsTextModel
                    delegate: Rectangle {
                        width: parent.width
                        height: 44
                        color: "#3D3B3B"
                        radius: 4

                        Item {
                            anchors.fill: parent
                            anchors.margins: 12

                            // Sol tərəf - label
                            Text {
                                text: model.label
                                color: "white"
                                font.pixelSize: 14
                                verticalAlignment: Text.AlignVCenter
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                            }

                            // Sağ tərəf - dəyər qutusu
                            Rectangle {
                                width: 50
                                height: 24
                                radius: 4
                                color: "#2A2A2A"
                                border.color: "#666666"
                                border.width: 1
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.right: parent.right

                                // Daxili məzmun
                                Loader {
                                    anchors.fill: parent
                                    sourceComponent: model.isEditable ? editableField : staticField
                                }

                                Component {
                                    id: editableField
                                    TextInput {
                                        text: model.value
                                        color: "white"
                                        font.pixelSize: 12
                                        anchors.centerIn: parent
                                        horizontalAlignment: TextInput.AlignHCenter
                                        verticalAlignment: TextInput.AlignVCenter
                                        inputMethodHints: Qt.ImhDigitsOnly
                                        focus: false
                                    }
                                }

                                Component {
                                    id: staticField
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
    }
}
