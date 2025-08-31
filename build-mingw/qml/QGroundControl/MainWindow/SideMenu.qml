import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: leftPanel
    width: 250
    color: "black"
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    z: 1

    // 🔝 Logo
    Image {
        id: logoImage
        source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Logo.svg"
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        width: 120
        height: 72
        fillMode: Image.PreserveAspectFit
        smooth: true
    }

    Loader {
        id: dynamicPanelLoader
        anchors.centerIn: parent
    }

    // 🧭 Yuxarı menyu düymələri
    Column {
        id: menuColumn
        spacing: 10
        anchors.top: logoImage.bottom
        anchors.topMargin: 40
        anchors.horizontalCenter: parent.horizontalCenter
       signal popout()
        function createMenuButton(iconPath, textLabel) {
            return Qt.createQmlObject(`
                import QtQuick 2.15
                import QtQuick.Controls 2.15

                Rectangle {
                    width: 220
                    height: 40
                    radius: 6
                    color: hovered ? "#2c2c2c" : "transparent"

                    property bool hovered: false

                    Row {
                        anchors.verticalCenter: parent.verticalCenter
                        spacing: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 16

                        Image {
                            source: "` + iconPath + `"
                            width: 30
                            height: 30
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            text: "` + textLabel + `"
                            color: "white"
                            font.pixelSize: 16
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: parent.hovered = true
                        onExited: parent.hovered = false
                        onClicked: {
                                      if ("` + textLabel + `" === "Tənzimləmələr") {
                                      mainWindow.hideToolDrawer()
                                                              mainWindow.showSettingsTool()
                                                          } else {
                                                              console.log("Clicked on: " + "` + textLabel + `")
                                                          }
                                      if ("` + textLabel + `" === "Ana səhifə") {
                                                              mainWindow.showFlyView()
                                                              mainWindow.hideToolDrawer()
                                                          } else {
                                                              console.log("Clicked on: " + "` + textLabel + `")
                                                          }
                                      if ("` + textLabel + `" === "Aparat Qurğusu") {
                                      mainWindow.hideToolDrawer()
                                                              sideMenuLoader.source = "SideMenu_AparatQurgusu.qml"
                                                          } else {
                                                              console.log("Clicked on: " + "` + textLabel + `")
                                                          }
                                      if ("` + textLabel + `" === "Missiya Planlayıcısı") {
                                      mainWindow.hideToolDrawer()
                                                              mainWindow.showPlanView()
                                                          } else {
                                                              console.log("Clicked on: " + "` + textLabel + `")
                                                          }

                        }
                    }
                }
            `, menuColumn, "DynamicMenuButton")
        }

        Component.onCompleted: {
            addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Home.svg", "Ana səhifə"))
            addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Flight Dashboard.svg", "Uçuş paneli"))
            addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Mission Planner.svg", "Missiya Planlayıcısı"))
            addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Vehicle Setup.svg", "Aparat Qurğusu"))
            addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Log Analysis.svg", "Qeyd Analizi"))
            addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Simulator.svg", "Simulyator"))
            addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Settings.svg", "Tənzimləmələr"))
        }

        function addItem(item) {
            menuColumn.children.push(item)
        }
    }




    Column {
        id: bottomSection
        spacing: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 300

        // 🟢 Connect düyməsi
        Rectangle {
            id: connectButton
            width: 200
            height: 40
            radius: 8
            color: "#3da64b"
            anchors.horizontalCenter: parent.horizontalCenter

            Row {
                anchors.centerIn: parent
                spacing: 8

                Image {
                    source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Connect.svg"
                    width: 18
                    height: 18
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    text: "Bağlan"
                    color: "white"
                    font.pixelSize: 14
                }
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    console.log("🔌 Connect clicked")
                    dynamicPanelLoader.source = "FailsafePage.qml"
                }
            }


        }

        // ⚠️ Pre-arm check panel
        Rectangle {
        id: preArmPanel
        width: 100
        radius: 6
        color: "#2b2b2b"
        anchors.horizontalCenter: parent.left
        anchors.leftMargin: 40 // Əlavə olunan dəyişiklik



            Column {
                anchors.fill: parent
                anchors.margins: 50
                spacing:15

                Text {
                    text: "Silahlanma öncəsi yoxlamalar"
                    color: "#cccccc"
                    font.pixelSize: 14
                }

                Rectangle {
                    width: parent.width
                    height: 1
                    color: "#444"
                }

                Row {
                    spacing: 8

                    Image {
                        source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/All systems OK.svg"
                        width: 20
                        height: 20
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        text: "Bütün sistemlər\n qaydasındadır"
                        color: "lightgreen"
                        font.pixelSize: 14
                    }
                }

                Row {
                    spacing: 8

                    Image {
                        source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/No GPS Fix.svg"
                        width: 20
                        height: 20
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        text: "Silahlanma öncəsi\nuğursuz oldu:\nGPS siqnalı tapılmadı"
                        color: "orange"
                        font.pixelSize: 14
                        wrapMode: Text.WordWrap
                    }
                }
            }
        }
    }
}
