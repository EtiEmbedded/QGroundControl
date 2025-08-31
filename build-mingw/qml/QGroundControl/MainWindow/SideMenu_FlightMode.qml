import QtQuick
import QtQuick.Controls



Rectangle {
    width: 1560
    height: 1080
    color: "black"   // Radio səhifəsi: tam qara


Text {
    text: "Flight Modes Configuration"
    color: "white"
    x: 35; y: 40
    font.pixelSize: 26; font.bold: true
    }

Text {
    text: "Configure flight modes and switch options for your RC transmitter inputs"
    color: "#E8E8E8"
    x: 35; y: 86
    font.pixelSize: 16
}


// Flight Mode Settings
Rectangle { x: 30; y: 149; width: 733; height: 700; color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

    Text { text: "Flight Mode Settings"; color: "white"; x: 30; y: 30; font.pixelSize: 18; font.bold: true }

    // Ümumi layout
    Column {
        id: fmCol
        x: 30; y: 76
        width: parent.width - 60     // = 733 - 60 = 673
        spacing: 22

        // ---- Flight mode channel sətri (673x60)
        Rectangle {
            width: fmCol.width        // 673
            height: 60
            radius: 10; color: "#232323"

            Row {
                anchors.fill: parent
                anchors.margins: 18
                spacing: 16

                // Etiket
                Text {
                    text: "Flight mode channel"
                    color: "#E8E8E8"
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    // Row-un daxili eni: width - 2*margins.
                    // Burada 1 dənə spacing və 130px-lik ComboBox var:
                    width: parent.width - (130 + 16)
                    elide: Text.ElideRight
                }

                ComboBox {
                    id: channelCombo
                    model: ["Channel 1","Channel 2","Channel 3","Channel 4",
                            "Channel 5","Channel 6","Channel 7","Channel 8"]
                    currentIndex: 0
                    width: 130; height: 36
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 14

                    contentItem: Text {
                        text: channelCombo.displayText
                        color: "#E8E8E8"
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 12
                        font.pixelSize: 14
                        elide: Text.ElideRight
                    }
                    background: Rectangle {
                        radius: 8
                        color: "#2B2B2B"
                        border.width: 1
                        border.color: "#585858"
                    }
                    indicator: Canvas {
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 10
                        width: 12; height: 8
                        onPaint: {
                            var ctx = getContext("2d");
                            ctx.reset();
                            ctx.fillStyle = "#CFCFCF";
                            ctx.beginPath();
                            ctx.moveTo(0,0); ctx.lineTo(width,0); ctx.lineTo(width/2,height); ctx.closePath();
                            ctx.fill();
                        }
                    }
                }
            }
        }

        // ---- Flight modes model və cədvəl
        property var pwmRanges: ["PWM 0–1230","PWM 1231–1360","PWM 1361–1490",
                                 "PWM 1491–1620","PWM 1621–1749","PWM 1750+"]
        property var defaultModes: ["RTL","RTL","FBWA","FBWA","Manual","Manual"]
        property var modeOptions: ["Manual","Stabilize","FBWA","Loiter","RTL","Auto","Guided","Acro"]

        Repeater {
            model: 6

            // Hər flight mode üçün 553x60
            Rectangle {
                width: 553
                height: 60
                radius: 10; color: "#232323"

                Row {
                    anchors.fill: parent
                    anchors.margins: 18
                    spacing: 16

                    // Sol etiket
                    Text {
                        text: "Flight mode " + (index + 1)
                        color: "#E8E8E8"
                        font.pixelSize: 16
                        verticalAlignment: Text.AlignVCenter
                        // Row daxilində: Text + 16 + Combo(130) + 16 + PWM(140) = toplam sabitlər
                        width: parent.width - (130 + 140 + 2*16)
                        elide: Text.ElideRight
                    }

                    // Rejim seçimi (orta hissə)
                    ComboBox {
                        id: modeCombo
                        model: fmCol.modeOptions
                        currentIndex: Math.max(0, fmCol.modeOptions.indexOf(fmCol.defaultModes[index]))
                        width: 130; height: 36
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 14

                        contentItem: Text {
                            text: modeCombo.displayText
                            color: "#E8E8E8"
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 12
                            font.pixelSize: 14
                            elide: Text.ElideRight
                        }
                        background: Rectangle {
                            radius: 8
                            color: "#2B2B2B"
                            border.width: 1
                            border.color: "#585858"
                        }
                        indicator: Canvas {
                            anchors.right: parent.right
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.rightMargin: 10
                            width: 12; height: 8
                            onPaint: {
                                var ctx = getContext("2d");
                                ctx.reset();
                                ctx.fillStyle = "#CFCFCF";
                                ctx.beginPath();
                                ctx.moveTo(0,0); ctx.lineTo(width,0); ctx.lineTo(width/2,height); ctx.closePath();
                                ctx.fill();
                            }
                        }
                    }

                    // Sağda PWM aralığı
                    Text {
                        text: fmCol.pwmRanges[index]
                        color: "#BFBFBF"
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        width: 140
                    }
                }
            }
        }
    }
}


// Switch Options
Rectangle {
    x: 787; y: 149; width: 733; height: 700;
    color: "#3D3B3B"; radius: 16; border.width: 0.5; border.color: "#9D9D9D"

    Text {
        text: "Switch Options";
        color: "white";
        x: 30; y: 30;
        font.pixelSize: 18; font.bold: true
    }

    // Ümumi layout
    Column {
        id: switchCol
        x: 30; y: 76
        width: parent.width - 60
        spacing: 16

        // Channel seçimi üçün 7 ComboBox
        property var switchOptions: ["Do Nothing", "RTL", "Disarm", "Stabilize", "FBWA", "Manual"]

        Repeater {
            model: 8

            Rectangle {
                width: switchCol.width
                height: 60
                radius: 10; color: "#232323"

                Row {
                    anchors.fill: parent
                    anchors.margins: 18
                    spacing: 16

                    // Channel etiketləri
                    Text {
                        text: "Channel " + (index + 6) + " Option"
                        color: "#E8E8E8"
                        font.pixelSize: 16
                        verticalAlignment: Text.AlignVCenter
                        width: parent.width - (130 + 16)
                        elide: Text.ElideRight
                    }

                    // Switch seçim ComboBox
                    ComboBox {
                        id: switchCombo
                        model: switchCol.switchOptions
                        currentIndex: 0
                        width: 130; height: 36
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 14

                        contentItem: Text {
                            text: switchCombo.displayText
                            color: "#E8E8E8"
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 12
                            font.pixelSize: 14
                            elide: Text.ElideRight
                        }
                        background: Rectangle {
                            radius: 8
                            color: "#2B2B2B"
                            border.width: 1
                            border.color: "#585858"
                        }
                        indicator: Canvas {
                            anchors.right: parent.right
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.rightMargin: 10
                            width: 12; height: 8
                            onPaint: {
                                var ctx = getContext("2d");
                                ctx.reset();
                                ctx.fillStyle = "#CFCFCF";
                                ctx.beginPath();
                                ctx.moveTo(0,0); ctx.lineTo(width,0); ctx.lineTo(width/2,height); ctx.closePath();
                                ctx.fill();
                            }
                        }
                    }
                }
            }
        }
    }
}
}









