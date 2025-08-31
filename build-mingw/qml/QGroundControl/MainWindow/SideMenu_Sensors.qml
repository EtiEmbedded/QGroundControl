// SideMenu_Sensors.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 1560; height: 1080
    color: "black"

    // ---- Router + Loader ----
    Loader {
        id: pageLoader
        anchors.fill: parent
        sourceComponent: sensorsPage   // default olaraq Sensors səhifəsi

        function routeUrl(key) {
            switch (key) {
            case "accelerometer": return "SideMenu_Sensors_Accelerometer.qml"
            case "compass":       return "SideMenu_Sensors_Compass.qml"
            case "baro":          return "SideMenu_Sensors_Barometer.qml"
            case "level":         return "SideMenu_Sensors_Level.qml"
            case "compassmot":    return "SideMenu_Sensors_CompassMot.qml"
            case "settings":      return "SideMenu_Sensors_Settings.qml"
            default: return ""
            }
        }

        function loadKey(key) {
            const url = routeUrl(key)
            if (!url) return
            // Sub-səhifəyə lazım props-ları ötürürük
            pageLoader.setSource(Qt.resolvedUrl(url), {
                // sub-səhifədən geri dönmək üçün çağırılacaq funksiya
                goBack: function () {
                    // sub-səhifəni bağla və Sensors səhifəsini geri yüklə
                    pageLoader.setSource("", {})                 // əvvəl təmizlə
                    pageLoader.sourceComponent = sensorsPage     // sonra Component-i bərpa et
                },
                // Accelerometer panelini avtomatik açmaq üçün flag (istifadə edəcəksə)
                panelAutostart: (key === "accelerometer")
            })
        }

        // Hər dəfə yeni item yüklənəndə Sensors səhifəsinin siqnalını qoşuruq
        onLoaded: {
            if (item && item.openPage && !item._navWired) {
                item._navWired = true
                item.openPage.connect(function(key) { pageLoader.loadKey(key) })
            }
        }

        // Niyə “heç nə açılmadı”nı izləmək üçün
        onStatusChanged: {
            if (status === Loader.Error)
                console.log("[Loader ERROR]", errorString(), "source:", source)
            else if (status === Loader.Ready)
                console.log("[Loader READY]", source || "Component")
        }
    }

    // ---- SENSORS səhifəsi: başlıq + 6 kart ----
    Component {
        id: sensorsPage

        Item {
            id: sensors
            width: 1560; height: 1080

            // Naviqasiya siqnalı
            signal openPage(string key)

            // Başlıqlar
            Text { text: "Sensor Calibration"; color: "white"; x:35; y:40; font.pixelSize: 26; font.bold: true }
            Text { text: "Calibrate your vehicle's sensors for accurate flight control"; color:"#E8E8E8"; x:35; y:86; font.pixelSize: 16 }

            // --------- 1) Accelerometer ----------
            Rectangle {
                x: 30; y: 173; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

                Text { text: "Accelerometer"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text: "Calibrate the accelerometer by placing the vehicle in\ndifferent orientations"; color:"white"; x:30; y:105; font.pixelSize:14 }

                // Düymə
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color: "#9D9D9D"; radius: 6; border.width: 0.5; border.color: "#2A2A2A"
                    Text { text: "Calibrate Accelerometer"; color:"white"; x:111; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea {
                        anchors.fill: parent; cursorShape: Qt.PointingHandCursor
                        onClicked: sensors.openPage("accelerometer")
                    }
                }
            }

            // --------- 2) Compass ----------
            Rectangle {
                x: 535; y: 173; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text: "Compass"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text: "Calibrate the compass by rotating the vehicle in all\ndirections"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Compass"; color:"white"; x:131; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("compass") }
                }
            }

            // --------- 3) Barometer ----------
            Rectangle {
                x: 1040; y: 173; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text: "Calibrate Barometer"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text: "Calibrate Baro/Airspeed Keep the vehicle still to let sensors\nstabilize and record accurate pressure readings"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Barometer"; color:"white"; x:127; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("baro") }
                }
            }

            // --------- 4) Level Horizon ----------
            Rectangle {
                x: 30; y: 446; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text:"Level Horizon"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text:"Calibrate the level horizon place the vehicle on a flat\nsurface and set this position as level"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Level Horizon"; color:"white"; x:118; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("level") }
                }
            }

            // --------- 5) CompassMot ----------
            Rectangle {
                x: 535; y: 446; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text:"CompassMot"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text:"Calibrate CompassMot Rotate vehicle with motors on at\nlow speed"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate CompassMot"; color:"white"; x:113; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("compassmot") }
                }
            }

            // --------- 6) Sensor Settings ----------
            Rectangle {
                x: 1040; y: 446; width: 480; height: 248
                color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"
                Text { text:"Sensor Settings"; color:"white"; x:30; y:30; font.pixelSize:18; font.bold:true }
                Text { text:"Calibrate Sensot Settings: Follow device prompts to adjust all sensors for accurate readings"; color:"white"; x:30; y:105; font.pixelSize:14 }
                Rectangle {
                    x: 30; y: 173; width: 420; height: 42.13
                    color:"#9D9D9D"; radius:6; border.width:0.5; border.color:"#2A2A2A"
                    Text { text:"Calibrate Sensor Settings"; color:"white"; x:111; y:9; font.pixelSize:16; font.bold:true }
                    MouseArea { anchors.fill: parent; onClicked: sensors.openPage("settings") }
                }
            }
        }
    }
}
