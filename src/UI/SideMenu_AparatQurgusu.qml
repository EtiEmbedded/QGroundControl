import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 1920
    height: 1080
    color: "#000000"

    // Hansı menyu elementi seçilib
    property int selectedIndex: 0

    // ------------------ Başlıqlar ------------------
    Text {
        text: "Vehicle Setup"
        color: "white"
        x: 96; y: 40.5
        font.pixelSize: 26; font.bold: true
    }

    Text {
        text: "Configure your drone for flight"
        color: "#E8E8E8"
        x: 96; y: 86
        font.pixelSize: 16
    }

    Text {
        text: "Vehicle Configuration Summary"
        color: "white"
        x: 390; y: 40
        font.pixelSize: 26; font.bold: true
    }

    Text {
        text: "Overview of your vehicle setup status"
        color: "#E8E8E8"
        x: 390; y: 85
        font.pixelSize: 16
    }

    Rectangle { x: 0;   y: 146; width: 340; height: 1; color: "#FFFFFF"; opacity: 0.5 }

    Rectangle {
        x: 390; y: 176; width: 1490; height: 52
        radius: 10
        color: "#B3947272"
        border.width: 1
        border.color: "#B3FF0000"
    }

    // ------------------ Sağ yuxarı ikonlar ------------------
    Image {
        source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/TopStatusPanel_Cixis.svg"
        width: 20; height: 20
        anchors.top: parent.top; anchors.topMargin: 10
        anchors.right: parent.right; anchors.rightMargin: 10
        fillMode: Image.PreserveAspectFit
        MouseArea { anchors.fill: parent; onClicked: sideMenuLoader.source = "" }
    }

    Image {
        source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Back.svg"
        width: 20; height: 20
        anchors.top: parent.top; anchors.topMargin: 50
        anchors.left: parent.left; anchors.leftMargin: 45
        fillMode: Image.PreserveAspectFit
        MouseArea { anchors.fill: parent; onClicked: sideMenuLoader.source = "" }
    }

    // ------------------ Panel ölçüləri ------------------
    property int panelW: 733
    property int panelH: 192
    property int gap: 24
    property int leftX: 390
    property int topY: 268
    property int rightX: leftX + panelW + gap

    // Sol sütun (1,2,3)
    Repeater {
        model: 3
        Rectangle {
            x: leftX
            y: topY + (panelH + gap) * index
            width: panelW; height: panelH
            radius: 16
            color: "#3D3B3B"
            border.width: 1
            border.color: "#B3FF0000"
        }
    }

    // Sağ sütun (4,5,6)
    Repeater {
        model: 3
        Rectangle {
            x: rightX
            y: topY + (panelH + gap) * index
            width: panelW; height: panelH
            radius: 16
            color: "#3D3B3B"
            border.width: 1
            border.color: "#B3FF0000"
        }
    }

    // ------------------ SAĞ PANEL Loader (yalnız buranı dəyişirik) ------------------
    Loader {
        id: rightPanelLoader
        x: 360
        y: 0
        width: 1560
        height: 1080
        z: 10
        // initial: boş; istəsən burada default səhifə verə bilərsən
        // source: Qt.resolvedUrl("SideMenu_Summary.qml")
    }

    // ------------------ Sol menyu ------------------
    Column {
        id: iconList
        x: 18
        y: 146 + 44
        spacing: 44
    }

    // Dinamik ikon+mətn düyməsi
    function createMenuButton(iconPath, textLabel, index) {
        return Qt.createQmlObject(`
            import QtQuick 2.15
            Rectangle {
                width: ${index === selectedIndex ? 318 : 250}
                height: ${index === selectedIndex ? 64 : 30}
                radius: ${index === selectedIndex ? 8 : 0}
                color: "${index === selectedIndex ? "#434343" : "transparent"}"

                Row {
                    spacing: 14
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 10

                    Image { source: "${iconPath}"; width: 18; height: 18; fillMode: Image.PreserveAspectFit }
                    Text { text: "${textLabel}"; color: "white"; font.pixelSize: 20 }
                }

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        selectedIndex = ${index}
                        iconList.children = []
                        regenerateIcons()

                        // Yalnız sağ paneli dəyiş

                                if (${index} === 2) {
                                    // Radio → ikinci fayl
                                    rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Radio.qml"))}

                                  else if(${index} === 0){
                                    rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Summary.qml"))}

                                  else if(${index} === 1){
                                    rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Cercive.qml"))}

                                  else if(${index} === 3){
                                    rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_FlightMode.qml"))}

                                  else if(${index} === 4){
                                     rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Sensors.qml"))}


                                  else if(${index} === 5){
                                    rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Enerji.qml"))}

                                  else if(${index} === 6){
                                     rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Motors.qml"))}

                                  else if(${index} === 7){
                                    rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Tehlukesizlik.qml"))}

                                  else if(${index} === 8){
                                  rightPanelLoader.setSource(Qt.resolvedUrl("Side_Parameter.qml"))}

                                  else if(${index} === 9){
                                    rightPanelLoader.setSource(Qt.resolvedUrl("Side_Proqram_Teminati.qml"))}

                                  else {

                            // Digərləri üçün hazırda boş saxlayırıq

                            rightPanelLoader.source = ""

                            // istəsən switch ilə digər səhifələri də yükləyə bilərsən
                            // məsələn: if (${index} === 0) rightPanelLoader.setSource(Qt.resolvedUrl("SideMenu_Summary.qml"))
                        }
                    }
                }
            }
        `, iconList, "DynamicIconButton")
    }

    // Menyu elementlərini yarat
    function regenerateIcons() {
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Summary.svg",     "Xülasə",         0))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Frame.svg",       "Frame",          1))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Radio.svg",       "Radio",          2))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/FlightModes.svg", "Uçuş Rejimləri", 3))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Sensors.svg",     "Sensorlar",      4))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Power.svg",       "Enerji",         5))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Motors.svg",      "Mühərriklər",    6))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Safety.svg",      "Təhlükəsizlik",  7))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Parameters.svg",  "Parametrlər",    8))
        addItem(createMenuButton("file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/Firmware.svg",    "Proqram Təminatı", 9))
    }

    function addItem(item) { iconList.children.push(item) }

    Component.onCompleted: regenerateIcons()
}
