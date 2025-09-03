import QtQuick
import QtQuick.Controls
//import QtSvg 1.0  // QtSvg modülünü import ettik



Rectangle {
    width: 1560
    height: 1080
    color: "black" // Tehlikesizlik səhifəsi: tam qara

    // Safety Configuration

        Text {
            text: "Safety Configuration";
            color: "#FFFFFF";
            x: 50; y: 40;
            font.pixelSize: 26; font.bold:  true

            }

        // Set failsafe and safety parameters

        Text {
            text: "Set failsafe and safety parameters";
            color: "#E8E8E8";
            x: 50; y: 85;
            font.pixelSize: 16; font.bold: true
        }


            // cercive -- Battery Failsafe Triggers


        Rectangle {
            width:1490; height: 324;x:50 ; y: 149; color: "#3D3B3B";radius: 16; border.width: 1; border.color: "#9D9D9D"

        Text { text:"Battery Failsafe Triggers";
            color: "#FFFFFF";
            x: 30; y: 30;
            font.pixelSize: 18;font.bold: true }

        // Low Action

        Rectangle { x:30; y:78;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Low Action";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        ComboBox {
            id: returnNone
            model: ["None", "RTL", "Land", "Q Land", "Loiter to QLand "]
            width: 101
            height: 37
            x: 584
            y: 12
            font.pixelSize: 12
            font.bold: true

            background: Rectangle {
                color: "#3D3B3B"
                radius: 3
                border.color: "#9D9D9D"
                border.width: 1
            }

            contentItem: Text {
                text: returnNone.currentText
                color: "#FFFFFF"
                font.pixelSize: 15
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 6
            }

        }
        }

        // Critical action

        Rectangle { x:757; y:78;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Critical action";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        ComboBox {
            id: returnCriticalAction
            model: ["None", "RTL", "Land", "Q Land", "Loiter to QLand "]
            width: 101
            height: 37
            x: 584
            y: 12
            font.pixelSize: 12
            font.bold: true

            background: Rectangle {
                color: "#3D3B3B"
                radius: 3
                border.color: "#9D9D9D"
                border.width: 1
            }

            contentItem: Text {
                text: returnCriticalAction.currentText
                color: "#FFFFFF"
                font.pixelSize: 15
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 6
            }

        }
        }

            // Low Voltage threshold (V)

        Rectangle { x:30; y:163;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Low Voltage threshold (V)";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        // textBox

        Rectangle { x:573; y:12;
            width:112; height: 37;
            color: "#3D3B3B"
             radius: 6;
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:"  10.4           V";
            color: "#FFFFFF"; x: 8; y: 6.5;
            font.pixelSize: 15; font.bold: true }

        }
    }

        // Cricital Voltage Threshold (V)

        Rectangle { x:757; y:163;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Cricital Voltage Threshold (V)";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        // textBox

        Rectangle { x:592; y:12;
            width: 93; height: 37;
            color: "#3D3B3B"
             radius: 6;
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:" 0              V";
            color: "#FFFFFF"; x: 8; y: 6.5;
            font.pixelSize: 15; font.bold: true }

        }
    }

        // Low mAh Threshold

    Rectangle { x:30; y: 246;
        width:703; height: 60;
        color: "#2A2A2A"
         radius: 6;

    Text { text:"Low mAh Threshold";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

    // textBox

    Rectangle { x:573; y:12;
        width:112; height: 37;
        color: "#3D3B3B"
         radius: 6;
         border.color: "#9D9D9D"
         border.width: 1

    Text { text:"  0          mAh";
        color: "#FFFFFF"; x: 8; y: 6.5;
        font.pixelSize: 15; font.bold: true }

    }
}
        // Cricital mAh Threshold

        Rectangle { x:757; y: 246;
            width:703; height: 60;
            color: "#2A2A2A"
             radius: 6;

        Text { text:"Cricital mAh Threshold";
            color: "#FFFFFF"; x: 30; y: 18;
            font.pixelSize: 16; font.bold: true }

        // textBox

        Rectangle { x:573; y:12;
            width: 112; height: 37;
            color: "#3D3B3B"
             radius: 6
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:" 0            mAh";
            color: "#FFFFFF"; x: 8; y: 6.5;
            font.pixelSize: 15; font.bold: true }

        }
    }
 }

    //   --- Failsafe Triggers  ------cercive

        Rectangle { x:50; y: 496;
            width: 733; height: 234;
            color: "#3D3B3B"
             radius: 16;
             border.color: "#9D9D9D"
             border.width: 1

        Text { text:"Failsafe Triggers";
            color: "#FFFFFF"; x: 30; y: 30;
            font.pixelSize: 18; font.bold: true }

        //  Throttle PWM threshold -----------

        Rectangle {
            x: 30; y: 72
            width: 673; height: 60
            color: "#2A2A2A"
            radius: 6

            // Sol tarafta checkbox + başlık
            Row {
                id: rowPwm
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.margins: 12
                anchors.rightMargin: valuePWM.width + 12   // sağdaki kutuya çakışma olmasın
                spacing: 24

                CheckBox {
                    id: cbPwm
                    text: ""
                    spacing: 0
                    leftPadding: 0; rightPadding: 0
                    topPadding: 0;  bottomPadding: 0
                    contentItem: Item { width: 0; height: 0 }

                    // Küçük ve transparent gösterge
                    indicator: Rectangle {
                        id: indPwm
                        x: 30
                        y: 7
                        implicitWidth: 20
                        implicitHeight: 20
                        radius: 3
                        border.color: "#FFFFFF"
                        border.width: 2
                        color: "transparent"

                        Canvas {
                            id: markPwm
                            anchors.fill: parent
                            onPaint: {
                                var ctx = getContext("2d")
                                ctx.clearRect(0,0,width,height)
                                if (cbPwm.checked) {
                                    ctx.strokeStyle = "#FFFFFF"
                                    ctx.lineWidth = 2
                                    ctx.beginPath()
                                    ctx.moveTo(width*0.2, height*0.55)
                                    ctx.lineTo(width*0.45, height*0.8)
                                    ctx.lineTo(width*0.8, height*0.25)
                                    ctx.stroke()
                                }
                            }
                        }
                        Connections { target: cbPwm; onCheckedChanged: markPwm.requestPaint() }
                    }
                }

                // Başlık metnini x/y ile korumak için sarmalayıcı
                Item {
                    id: labelWrapPwm
                    anchors.verticalCenter: parent.verticalCenter
                    width: 62 + labelPwm.implicitWidth
                    height: Math.max(indPwm.implicitHeight, labelPwm.implicitHeight)

                    Text {
                        id: labelPwm
                        x: 62
                        y: 4
                        text: "Throttle PWM threshold"
                        color: "#FFFFFF"
                        font.pixelSize: 16
                        font.bold: true
                        verticalAlignment: Text.AlignVCenter
                    }

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: cbPwm.checked = !cbPwm.checked
                    }
                }
            }

            // Sağdaki değer kutusu
            Rectangle {
                id: valuePWM
                anchors.right: parent.right
                anchors.rightMargin: 12
                anchors.verticalCenter: parent.verticalCenter
                width: 79; height: 37
                color: "#3D3B3B"
                radius: 6
                border.color: "#8F8F8F"
                border.width: 1

                Text {
                    text: " 950 "
                    color: "#FFFFFF"
                    x: 8; y: 6.5
                    font.pixelSize: 15
                    font.bold: true
                }
            }
        }
         // ------------------------------------------------------------------------

        // GCS failsafe

        Rectangle {
            x: 30; y: 156
            width: 673; height: 60
            color: "#2A2A2A"
            radius: 6

            Row {
                id: rowGcs
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.margins: 12
                spacing: 24

                CheckBox {
                    id: cbGcs
                    text: ""
                    spacing: 0
                    leftPadding: 0; rightPadding: 0
                    topPadding: 0;  bottomPadding: 0
                    contentItem: Item { width: 0; height: 0 }

                    indicator: Rectangle {
                        id: indGcs
                        x: 30
                        y: 7
                        implicitWidth: 20
                        implicitHeight: 20
                        radius: 3
                        border.color: "#FFFFFF"
                        border.width: 2
                        color: "transparent"

                        Canvas {
                            id: markGcs
                            anchors.fill: parent
                            onPaint: {
                                var ctx = getContext("2d")
                                ctx.clearRect(0,0,width,height)
                                if (cbGcs.checked) {
                                    ctx.strokeStyle = "#FFFFFF"
                                    ctx.lineWidth = 2
                                    ctx.beginPath()
                                    ctx.moveTo(width*0.2, height*0.55)
                                    ctx.lineTo(width*0.45, height*0.8)
                                    ctx.lineTo(width*0.8, height*0.25)
                                    ctx.stroke()
                                }
                            }
                        }
                        Connections { target: cbGcs; onCheckedChanged: markGcs.requestPaint() }
                    }
                }

                Item {
                    id: labelWrapGcs
                    anchors.verticalCenter: parent.verticalCenter
                    width: 62 + labelGcs.implicitWidth
                    height: Math.max(indGcs.implicitHeight, labelGcs.implicitHeight)

                    Text {
                        id: labelGcs
                        x: 62
                        y: 4
                        text: "GCS failsafe"
                        color: "#FFFFFF"
                        font.pixelSize: 16
                        font.bold: true
                        verticalAlignment: Text.AlignVCenter
                    }

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: cbGcs.checked = !cbGcs.checked
                    }
                }
            }
        }

    }

        //  -------------  Return to Lanch -------------

            Rectangle { x:810; y: 496;
                width: 733; height: 234;
                color: "#3D3B3B"
                 radius: 16;
                 border.color: "#9D9D9D"
                 border.width: 1

            Text { text:"Return to Lanch ";
                color: "#FFFFFF"; x: 30; y: 30;
                font.pixelSize: 18; font.bold: true }


            // Return at current altitude 1

            Rectangle {
                x: 30; y: 72
                width: 673; height: 60
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowReturnAlt
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    RadioButton {
                        id: rbReturnAlt
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        // Küçük, transparent radio göstergesi (halqa + seçilidə içi dolu nöqtə)
                        indicator: Rectangle {
                            id: indReturnAlt
                            x: 30
                            y: 4
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: implicitWidth/2
                            color: "transparent"
                            border.color: "#FFFFFF"
                            border.width: 2

                            Canvas {
                                id: markReturnAlt
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (rbReturnAlt.checked) {
                                        ctx.beginPath()
                                        ctx.fillStyle = "#FFFFFF"
                                        // iç nöqtə (halqanın mərkəzində)
                                        var r = Math.min(width, height) * 0.28
                                        ctx.arc(width/2, height/2, r, 0, Math.PI*2)
                                        ctx.fill()
                                    }
                                }
                            }
                            Connections { target: rbReturnAlt; onCheckedChanged: markReturnAlt.requestPaint() }
                        }
                    }

                    // Başlığın x/y mövqesini qorumaq üçün sarmalayıcı
                    Item {
                        id: labelWrapReturnAlt
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelReturnAlt.implicitWidth
                        height: Math.max(indReturnAlt.implicitHeight, labelReturnAlt.implicitHeight)

                        Text {
                            id: labelReturnAlt
                            x: 62
                            y: 2
                            text: "Return at current altitude"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: rbReturnAlt.checked = !rbReturnAlt.checked
                        }
                    }
                }
            }

            //  Return at current altitude 2--------

            Rectangle {
                x: 30; y: 156
                width: 673; height: 60
                color: "#2A2A2A"
                radius: 6

                // Sol: radio + başlık
                Row {
                    id: rowReturnAlt2
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    anchors.rightMargin: valueReturnAlt.width + 12   // sağdaki kutuya çakışma olmasın
                    spacing: 24

                    RadioButton {
                        id: rbReturnAlt2
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        // Küçük, transparent radio göstergesi (halqa)
                        indicator: Rectangle {
                            id: indReturnAlt2
                            x: 30
                            y: 4
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: implicitWidth/2
                            color: "transparent"
                            border.color: "#FFFFFF"
                            border.width: 2

                            Canvas {
                                id: markReturnAlt2
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (rbReturnAlt2.checked) {
                                        ctx.beginPath()
                                        ctx.fillStyle = "#FFFFFF"
                                        var r = Math.min(width, height) * 0.28  // iç dolu nöqtə
                                        ctx.arc(width/2, height/2, r, 0, Math.PI*2)
                                        ctx.fill()
                                    }
                                }
                            }
                            Connections { target: rbReturnAlt2; onCheckedChanged: markReturnAlt2.requestPaint() }
                        }
                    }

                    // Başlığın x/y konumunu korumak için sarmalayıcı
                    Item {
                        id: labelWrapReturnAlt2
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelReturnAlt2.implicitWidth
                        height: Math.max(indReturnAlt2.implicitHeight, labelReturnAlt2.implicitHeight)

                        Text {
                            id: labelReturnAlt2
                            x: 62
                            y: 2
                            text: "Return at current altitude"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: rbReturnAlt2.checked = !rbReturnAlt2.checked
                        }
                    }
                }

                // Sağ: değer kutusu
                Rectangle {
                    id: valueReturnAlt
                    anchors.right: parent.right
                    anchors.rightMargin: 12
                    anchors.verticalCenter: parent.verticalCenter
                    width: 125; height: 37
                    color: "#3D3B3B"
                    radius: 6
                    border.color: "#8F8F8F"
                    border.width: 1

                    Text {
                        text: "-1.000            m  "
                        color: "#FFFFFF"
                        x: 8; y: 6.5
                        font.pixelSize: 15
                        font.bold: true
                    }
                }
            }


            } //////


Rectangle {
    x: 50; y: 754
    width: 1490; height: 300
    color: "#3D3B3B"
    radius: 16
    border.width: 1
    border.color: "#9D9D9D"

    // Başlıq
    Text {
        text: "Arm Checks"
        color: "#FFFFFF"
        x: 30; y: 30
        font.pixelSize: 18
        font.bold: true
    }

    // Xəbərdarlıq
    Text {
        text: "Warning: Turning off arming checks can lead to loss of Vehicle control."
        color: "#BA331E"
        x: 462; y: 26
        font.pixelSize: 16
        font.bold: true
    }

    // "All" üçün checkbox (barometer stilində, transparent və kiçik)
    CheckBox {
        id: cbAll
        x: 1409; y: 22        // "All" mətni üçün solunda yerləşir
        width: 24; height: 40 // tıklanabilir sahə
        text: ""
        spacing: 0
        leftPadding: 0; rightPadding: 0
        topPadding: 0;  bottomPadding: 0
        contentItem: Item { width: 0; height: 0 }

        indicator: Rectangle {
            anchors.centerIn: parent
            width: 20; height: 20
            radius: 3
            border.color: "#FFFFFF"
            border.width: 2
            color: "transparent"

            Canvas {
                id: markAll
                anchors.fill: parent
                onPaint: {
                    var ctx = getContext("2d")
                    ctx.clearRect(0,0,width,height)
                    if (cbAll.checked) {
                        ctx.strokeStyle = "#FFFFFF"
                        ctx.lineWidth = 2
                        ctx.beginPath()
                        ctx.moveTo(width*0.2, height*0.55)
                        ctx.lineTo(width*0.45, height*0.8)
                        ctx.lineTo(width*0.8, height*0.25)
                        ctx.stroke()
                    }
                }
            }
        }

        // Ekstra: kutunun tamamı tıklansın
        MouseArea {
            anchors.fill: parent
            onClicked: cbAll.checked = !cbAll.checked
            cursorShape: Qt.PointingHandCursor
        }

        // Tik yenilə
        Connections { target: cbAll; onCheckedChanged: markAll.requestPaint() }
    }

    // "All" mətni
    Text {
        id: labelAll
        text: "All"
        color: "#FFFFFF"
        x: 1439; y: 30
        font.pixelSize: 16
        font.bold: true
    }

    // Mətni klikləyərkən də checkbox dəyişsin
    MouseArea {
        anchors.fill: labelAll
        onClicked: cbAll.checked = !cbAll.checked
        cursorShape: Qt.PointingHandCursor
    }


            // Barometer
                        Rectangle {
                            x: 30; y: 72
                            width: 228; height: 56
                            color: "#2A2A2A"
                            radius: 6

                            Row {
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.margins: 12
                                spacing: 24

                                CheckBox {
                                    id: cb
                                    text: ""
                                    spacing: 0
                                    leftPadding: 0; rightPadding: 0
                                    topPadding: 0;  bottomPadding: 0
                                    contentItem: Item { width: 0; height: 0 }

                                    // Sənin x/y ilə göstərici
                                    indicator: Rectangle {
                                        id: ind
                                        x: 30
                                        y: 3
                                        implicitWidth: 20
                                        implicitHeight: 20
                                        radius: 3
                                        border.color: "#FFFFFF"
                                        border.width: 2
                                        color: "transparent"

                                        Canvas {
                                            id: mark
                                            anchors.fill: parent
                                            onPaint: {
                                                var ctx = getContext("2d")
                                                ctx.clearRect(0,0,width,height)
                                                if (cb.checked) {
                                                    ctx.strokeStyle = "#FFFFFF"
                                                    ctx.lineWidth = 2
                                                    ctx.beginPath()
                                                    ctx.moveTo(width*0.2, height*0.55)
                                                    ctx.lineTo(width*0.45, height*0.8)
                                                    ctx.lineTo(width*0.8, height*0.25)
                                                    ctx.stroke()
                                                }
                                            }
                                        }
                                        Connections { target: cb; onCheckedChanged: mark.requestPaint() }
                                    }
                                }

                                // Text üçün x/y-ni wrapper Item içində saxlayırıq
                                Item {
                                    id: labelWrap
                                    anchors.verticalCenter: parent.verticalCenter
                                    width: 62 + label.implicitWidth
                                    height: Math.max(ind.implicitHeight, label.implicitHeight)

                                    Text {
                                        id: label
                                        x: 62
                                        y: 0
                                        text: "Barometer"
                                        color: "#FFFFFF"
                                        font.pixelSize: 16
                                        font.bold: true
                                        verticalAlignment: Text.AlignVCenter
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        cursorShape: Qt.PointingHandCursor
                                        onClicked: cb.checked = !cb.checked
                                    }
                                }
                            }
                        }

                        /* 2) RC Channels */
                        Rectangle {
                            x: 30; y: 148
                            width: 228; height: 56
                            color: "#2A2A2A"
                            radius: 6

                            Row {
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.margins: 12
                                spacing: 24

                                CheckBox {
                                    id: cb1
                                    text: ""
                                    spacing: 0
                                    leftPadding: 0; rightPadding: 0
                                    topPadding: 0;  bottomPadding: 0
                                    contentItem: Item { width: 0; height: 0 }

                                    indicator: Rectangle {
                                        id: ind1
                                        x: 30
                                        y: 7
                                        implicitWidth: 20
                                        implicitHeight: 20
                                        radius: 3
                                        border.color: "#FFFFFF"
                                        border.width: 2
                                        color: "transparent"

                                        Canvas {
                                            id: mark1
                                            anchors.fill: parent
                                            onPaint: {
                                                var ctx = getContext("2d")
                                                ctx.clearRect(0,0,width,height)
                                                if (cb1.checked) {
                                                    ctx.strokeStyle = "#FFFFFF"
                                                    ctx.lineWidth = 2
                                                    ctx.beginPath()
                                                    ctx.moveTo(width*0.2, height*0.55)
                                                    ctx.lineTo(width*0.45, height*0.8)
                                                    ctx.lineTo(width*0.8, height*0.25)
                                                    ctx.stroke()
                                                }
                                            }
                                        }
                                        Connections { target: cb1; onCheckedChanged: mark1.requestPaint() }
                                    }
                                }

                                Item {
                                    id: labelWrap1
                                    anchors.verticalCenter: parent.verticalCenter
                                    width: 62 + label1.implicitWidth
                                    height: Math.max(ind1.implicitHeight, label1.implicitHeight)

                                    Text {
                                        id: label1
                                        x: 62
                                        y: 6
                                        text: "RC Channels"
                                        color: "#FFFFFF"
                                        font.pixelSize: 16
                                        font.bold: true
                                        verticalAlignment: Text.AlignVCenter
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        cursorShape: Qt.PointingHandCursor
                                        onClicked: cb1.checked = !cb1.checked
                                    }
                                }
                            }
                        }
            // Mission

            Rectangle {
                x:30; y:226;
                width: 228; height: 56;
                color: "#2A2A2A"
                radius: 6
                // border.color: "#8F8F8F"
                // border.width: 1
                Row {
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.margins: 12
                        spacing: 24

                        CheckBox {
                            id: cbMission
                            text: ""
                            spacing: 0
                            leftPadding: 0; rightPadding: 0
                            topPadding: 0;  bottomPadding: 0
                            contentItem: Item { width: 0; height: 0 }

                            indicator: Rectangle {
                                id: indMission
                                x: 30
                                y: 7
                                implicitWidth: 20
                                implicitHeight: 20
                                radius: 3
                                border.color: "#FFFFFF"
                                border.width: 2
                                color: "transparent"

                                Canvas {
                                    id: markMission
                                    anchors.fill: parent
                                    onPaint: {
                                        var ctx = getContext("2d")
                                        ctx.clearRect(0,0,width,height)
                                        if (cbMission.checked) {
                                            ctx.strokeStyle = "#FFFFFF"
                                            ctx.lineWidth = 2
                                            ctx.beginPath()
                                            ctx.moveTo(width*0.2, height*0.55)
                                            ctx.lineTo(width*0.45, height*0.8)
                                            ctx.lineTo(width*0.8, height*0.25)
                                            ctx.stroke()
                                        }
                                    }
                                }
                                Connections { target: cbMission; onCheckedChanged: markMission.requestPaint() }
                            }
                        }

                        Item {
                            id: labelWrapMission
                            anchors.verticalCenter: parent.verticalCenter
                            width: 62 + labelMission.implicitWidth
                            height: Math.max(indMission.implicitHeight, labelMission.implicitHeight)

                            Text {
                                id: labelMission
                                x: 62
                                y: 6
                                text: "Mission"
                                color: "#FFFFFF"
                                font.pixelSize: 16
                                font.bold: true
                                verticalAlignment: Text.AlignVCenter
                            }

                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: cbMission.checked = !cbMission.checked
                            }
                        }
                    }
                }



            // Compass

            Rectangle {
                x: 270; y: 72
                width: 228; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbCompass
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indCompass
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markCompass
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbCompass.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbCompass; onCheckedChanged: markCompass.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapCompass
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelCompass.implicitWidth
                        height: Math.max(indCompass.implicitHeight, labelCompass.implicitHeight)

                        Text {
                            id: labelCompass
                            x: 62
                            y: 6
                            text: "Compass"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbCompass.checked = !cbCompass.checked
                        }
                    }
                }
            }


            // Board Voltage

            Rectangle {
                x: 270; y: 148
                width: 228; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbBoardVoltage
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indBoardVoltage
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markBoardVoltage
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbBoardVoltage.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbBoardVoltage; onCheckedChanged: markBoardVoltage.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapBoardVoltage
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelBoardVoltage.implicitWidth
                        height: Math.max(indBoardVoltage.implicitHeight, labelBoardVoltage.implicitHeight)

                        Text {
                            id: labelBoardVoltage
                            x: 62
                            y: 6
                            text: "Board Voltage"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbBoardVoltage.checked = !cbBoardVoltage.checked
                        }
                    }
                }
            }


            // FFT

            Rectangle {
                x: 270.5; y: 226
                width: 228; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbFFT
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indFFT
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markFFT
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbFFT.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbFFT; onCheckedChanged: markFFT.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapFFT
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelFFT.implicitWidth
                        height: Math.max(indFFT.implicitHeight, labelFFT.implicitHeight)

                        Text {
                            id: labelFFT
                            x: 62
                            y: 6
                            text: "FFT"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbFFT.checked = !cbFFT.checked
                        }
                    }
                }
            }


            // GPS Lock

            Rectangle {
                x: 510; y: 72
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowGPS
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbGPS
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indGPS
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markGPS
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbGPS.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbGPS; onCheckedChanged: markGPS.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapGPS
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelGPS.implicitWidth
                        height: Math.max(indGPS.implicitHeight, labelGPS.implicitHeight)

                        Text {
                            id: labelGPS
                            x: 62
                            y: 6
                            text: "GPS Lock"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbGPS.checked = !cbGPS.checked
                        }
                    }
                }
            }


            // Battery Level

            Rectangle {
                x: 510; y: 148
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowBattery
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbBattery
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indBattery
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markBattery
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbBattery.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbBattery; onCheckedChanged: markBattery.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapBattery
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelBattery.implicitWidth
                        height: Math.max(indBattery.implicitHeight, labelBattery.implicitHeight)

                        Text {
                            id: labelBattery
                            x: 62
                            y: 6
                            text: "Battery Level"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbBattery.checked = !cbBattery.checked
                        }
                    }
                }
            }

            // GPS Configuration

            Rectangle {
                x: 511; y: 226
                width: 224; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowGPSConfig
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbGPSConfig
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indGPSConfig
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markGPSConfig
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbGPSConfig.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbGPSConfig; onCheckedChanged: markGPSConfig.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapGPSConfig
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelGPSConfig.implicitWidth
                        height: Math.max(indGPSConfig.implicitHeight, labelGPSConfig.implicitHeight)

                        Text {
                            id: labelGPSConfig
                            x: 62
                            y: 6
                            text: "GPS Configuration"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbGPSConfig.checked = !cbGPSConfig.checked
                        }
                    }
                }
            }


            // INS

            Rectangle {
                x: 750.5; y: 72
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowINS
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbINS
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indINS
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markINS
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbINS.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbINS; onCheckedChanged: markINS.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapINS
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelINS.implicitWidth
                        height: Math.max(indINS.implicitHeight, labelINS.implicitHeight)

                        Text {
                            id: labelINS
                            x: 62
                            y: 6
                            text: "INS"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbINS.checked = !cbINS.checked
                        }
                    }
                }
            }

            // Airspeed

            Rectangle {
                x: 750.5; y: 148
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowAirspeed
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbAirspeed
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indAirspeed
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markAirspeed
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbAirspeed.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbAirspeed; onCheckedChanged: markAirspeed.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapAirspeed
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelAirspeed.implicitWidth
                        height: Math.max(indAirspeed.implicitHeight, labelAirspeed.implicitHeight)

                        Text {
                            id: labelAirspeed
                            x: 62
                            y: 6
                            text: "Airspeed"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbAirspeed.checked = !cbAirspeed.checked
                        }
                    }
                }
            }


            // System

            Rectangle {
                x: 747; y: 226
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowSystem
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbSystem
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indSystem
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markSystem
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbSystem.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbSystem; onCheckedChanged: markSystem.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapSystem
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelSystem.implicitWidth
                        height: Math.max(indSystem.implicitHeight, labelSystem.implicitHeight)

                        Text {
                            id: labelSystem
                            x: 62
                            y: 6
                            text: "System"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbSystem.checked = !cbSystem.checked
                        }
                    }
                }
            }


            // Parameters

            Rectangle {
                x: 991; y: 72
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowParameters
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbParameters
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indParameters
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markParameters
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbParameters.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbParameters; onCheckedChanged: markParameters.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapParameters
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelParameters.implicitWidth
                        height: Math.max(indParameters.implicitHeight, labelParameters.implicitHeight)

                        Text {
                            id: labelParameters
                            x: 62
                            y: 6
                            text: "Parameters"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbParameters.checked = !cbParameters.checked
                        }
                    }
                }
            }

            // Logging Avaiable
            Rectangle {
                x: 991; y: 148
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowLogging
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbLogging
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indLogging
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markLogging
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbLogging.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbLogging; onCheckedChanged: markLogging.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapLogging
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelLogging.implicitWidth
                        height: Math.max(indLogging.implicitHeight, labelLogging.implicitHeight)

                        Text {
                            id: labelLogging
                            x: 62
                            y: 6
                            text: "Logging Avaiable"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbLogging.checked = !cbLogging.checked
                        }
                    }
                }
            }

            // Rangefinder
            Rectangle {
                x: 983.5; y: 226
                width: 209.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowRangefinder
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbRangefinder
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indRangefinder
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markRangefinder
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbRangefinder.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbRangefinder; onCheckedChanged: markRangefinder.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapRangefinder
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelRangefinder.implicitWidth
                        height: Math.max(indRangefinder.implicitHeight, labelRangefinder.implicitHeight)

                        Text {
                            id: labelRangefinder
                            x: 62
                            y: 6
                            text: "Rangefinder"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbRangefinder.checked = !cbRangefinder.checked
                        }
                    }
                }
            }

            // Camera
            Rectangle {
                x: 1231.5; y: 72
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowCamera
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbCamera
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indCamera
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markCamera
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbCamera.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbCamera; onCheckedChanged: markCamera.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapCamera
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelCamera.implicitWidth
                        height: Math.max(indCamera.implicitHeight, labelCamera.implicitHeight)

                        Text {
                            id: labelCamera
                            x: 62
                            y: 6
                            text: "Camera"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbCamera.checked = !cbCamera.checked
                        }
                    }
                }
            }

            // AuxAuth
            Rectangle {
                x: 1231.5; y: 148
                width: 228.5; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowAuxAuth
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbAuxAuth
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indAuxAuth
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markAuxAuth
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbAuxAuth.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbAuxAuth; onCheckedChanged: markAuxAuth.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapAuxAuth
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelAuxAuth.implicitWidth
                        height: Math.max(indAuxAuth.implicitHeight, labelAuxAuth.implicitHeight)

                        Text {
                            id: labelAuxAuth
                            x: 62
                            y: 6
                            text: "AuxAuth"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbAuxAuth.checked = !cbAuxAuth.checked
                        }
                    }
                }
            }

            // Hardware Safety Switch
            Rectangle {
                x: 1205; y: 226
                width: 255; height: 56
                color: "#2A2A2A"
                radius: 6

                Row {
                    id: rowHSS
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 12
                    spacing: 24

                    CheckBox {
                        id: cbHSS
                        text: ""
                        spacing: 0
                        leftPadding: 0; rightPadding: 0
                        topPadding: 0;  bottomPadding: 0
                        contentItem: Item { width: 0; height: 0 }

                        indicator: Rectangle {
                            id: indHSS
                            x: 30
                            y: 7
                            implicitWidth: 20
                            implicitHeight: 20
                            radius: 3
                            border.color: "#FFFFFF"
                            border.width: 2
                            color: "transparent"

                            Canvas {
                                id: markHSS
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d")
                                    ctx.clearRect(0,0,width,height)
                                    if (cbHSS.checked) {
                                        ctx.strokeStyle = "#FFFFFF"
                                        ctx.lineWidth = 2
                                        ctx.beginPath()
                                        ctx.moveTo(width*0.2, height*0.55)
                                        ctx.lineTo(width*0.45, height*0.8)
                                        ctx.lineTo(width*0.8, height*0.25)
                                        ctx.stroke()
                                    }
                                }
                            }
                            Connections { target: cbHSS; onCheckedChanged: markHSS.requestPaint() }
                        }
                    }

                    Item {
                        id: labelWrapHSS
                        anchors.verticalCenter: parent.verticalCenter
                        width: 62 + labelHSS.implicitWidth
                        height: Math.max(indHSS.implicitHeight, labelHSS.implicitHeight)

                        Text {
                            id: labelHSS
                            x: 62
                            y: 6
                            text: "Hardware Safety Switch"
                            color: "#FFFFFF"
                            font.pixelSize: 16
                            font.bold: true
                            verticalAlignment: Text.AlignVCenter
                        }

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: cbHSS.checked = !cbHSS.checked
                        }
                    }
                }
            }



        }



}
