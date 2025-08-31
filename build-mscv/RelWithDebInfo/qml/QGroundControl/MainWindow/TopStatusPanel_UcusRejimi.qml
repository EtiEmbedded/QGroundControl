import QtQuick
import QtQuick.Controls

// ====================================================== Flight Mode kliklənəndə açılan panel =======================================================================

Rectangle {
    anchors.fill: parent
    visible: flightModePopupVisible
    color: "#00000080"
    z: 100

    Rectangle {
        width: 376
        height: 655
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
                text: "Flight Mode"
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
                            settingsLoader.source = "TopStatusPanel_UcusRejimi_Settings.qml"
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
                    onClicked: settingsLoader.source = ""
                }
            }
        }

        // ==== Flight Mode məlumatları ====
        Column {
            spacing: 6
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 12

            ListModel {
                id: flightModeModel
                ListElement { label: "Stabilize"; value: "Aktiv deyil" }
                ListElement { label: "Altitude Hold"; value: "Aktiv deyil" }
                ListElement { label: "Hold"; value: "Aktiv deyil" }
                ListElement { label: "Loiter"; value: "Aktiv deyil" }
                ListElement { label: "RTL"; value: "Aktiv deyil" }
                ListElement { label: "Land"; value: "Aktiv deyil" }
                ListElement { label: "Position Hold"; value: "Aktiv deyil" }
                ListElement { label: "Avoid ADSB"; value: "Aktiv deyil" }
                ListElement { label: "Smart RTL"; value: "Aktiv deyil" }
                ListElement { label: "Follow"; value: "Aktiv deyil" }
                ListElement { label: "Auto RTL"; value: "Aktiv deyil" }
                ListElement { label: "Flight Mode"; value: "Auto" }
            }

            Repeater {
                model: flightModeModel
                delegate: Rectangle {
                    width: parent.width
                    height: 44
                    color: "#3D3B3B"
                    radius: 4

                    Item {
                        anchors.fill: parent
                        anchors.margins: 12

                        // Sol Label
                        Text {
                            text: model.label
                            color: "white"
                            font.pixelSize: 14
                            verticalAlignment: Text.AlignVCenter
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                        }
                    }
                }
            }
        }
    }
}
