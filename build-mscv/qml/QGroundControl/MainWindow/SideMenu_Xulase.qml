// import QtQuick
// import QtQuick.Controls



// Rectangle {
//     width: 1560
//     height: 1080
//     color: "black"

//     // Vehicle Configuration Summary

//         Text {
//             text: "Vehicle Configuration Summary"
//             color: "#FFFFFF"
//             x: 50; y: 40
//             font.pixelSize: 26
//             font.bold:  true

//             }

//         // Choose an airframe configuration that matches your vehicle. You'll need to reboot after selection.

//         Text {
//             text: "Overview of your vehicle setup status"
//             color: "#E8E8E8"
//             x: 50; y: 85
//             font.pixelSize: 16
//             font.bold: true
//         }


//         // Vehicle requires setupbefore flight .5 modules need configuration.

//         Rectangle {x: 50; y: 176
//             width:1490; height: 52
//             color: "#947272"
//             radius: 10
//             border.width: 1
//             border.color: "#FF0000"

//             Image {
//                 source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/bx_error.svg"
//                 width: 30
//                 height: 30
//                 x: 20
//                 y: 7
//                 fillMode: Image.PreserveAspectFit
//                 smooth: true

//             }

//         Text { text:"Vehicle requires setupbefore flight .5 modules need configuration."
//             color: "#E7391E"
//             x: 68; y: 14
//             font.pixelSize: 16
//             font.bold: true
//         }
//         }

//         Rectangle {x: 50; y: 268
//             width:1490; height: 624
//             color: "black"
//             radius: 16
//             border.width: 1
//             border.color: "#9D9D9D"
//         }


// }
import QtQuick
import QtQuick.Controls

Rectangle {
    width: 1560
    height: 1080
    color: "black"

    // Vehicle Configuration Summary
    Text {
        text: "Vehicle Configuration Summary"
        color: "#FFFFFF"
        x: 50; y: 40
        font.pixelSize: 26
        font.bold: true
    }

    // Overview of your vehicle setup status
    Text {
        text: "Overview of your vehicle setup status"
        color: "#E8E8E8"
        x: 50; y: 85
        font.pixelSize: 16
        font.bold: true
    }

    // Vehicle requires setup before flight, .5 modules need configuration
    Rectangle {
        x: 50; y: 176
        width: 1490; height: 52
        color: "#947272"
        radius: 10
        border.width: 1
        border.color: "#FF0000"

        Image {
            source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/bx_error.svg"
            width: 30
            height: 30
            x: 20
            y: 7
            fillMode: Image.PreserveAspectFit
            smooth: true
        }

        Text {
            text: "Vehicle requires setup before flight .5 modules need configuration."
            color: "#E7391E"
            x: 68; y: 14
            font.pixelSize: 16
            font.bold: true
        }
    }

    // First rectangle with texts and images inside it
    Rectangle {
        x: 50; y: 268
        width: 1490; height: 624
        color: "black"
        radius: 16
        border.width: 1
        border.color: "#9D9D9D"

        // Grid layout for 6 rectangles
        Grid {
            rows: 3
            columns: 2
            anchors.fill: parent
            spacing: 24
            anchors.margins: 50

            Repeater {
                model: [
                    { title: "Radio Configuration", description: "Radio Configuration", status: "Configuration required", isSafety: false },
                    { title: "Safety Configuration", description: "Radio Configuration", status: "Configuration required", isSafety: true },
                    { title: "Radio Configuration", description: "Radio Configuration", status: "Configuration required", isSafety: false },
                    { title: "Radio Configuration", description: "Radio Configuration", status: "Configuration required", isSafety: false },
                    { title: "Radio Configuration", description: "Radio Configuration", status: "Configuration required", isSafety: false },
                    { title: "Radio Configuration", description: "Radio Configuration", status: "Configuration required", isSafety: false }
                ]

                delegate: Rectangle {
                    width: 733
                    height: 192
                    color: "black"
                    radius: 16
                    border.width: 1
                    border.color: model.isSafety ? "#33CE0C" : "#FF0000"

                    // Text1: Title
                    Text {
                        text: model.title
                        color: "#FFFFFF"
                        x: 30; y: 30
                        font.pixelSize: 18
                        font.bold: true
                    }

                    // Text2: Description
                    Text {
                        text: model.description
                        color: "#E8E8E8"
                        x: 30; y: 105
                        font.pixelSize: 16
                    }

                    // Text3: Status
                    Text {
                        text: model.status
                        color: "#E7391E"
                        x: 30; y: 135
                        font.pixelSize: 16
                    }

                    // Image
                    Image {
                        source: "file:///C:/Users/user/qgroundcontrol/resources/AZSHIELD_ICON/bx_error.svg"
                        width: 24
                        height: 24
                        x: 679
                        y: 30
                        fillMode: Image.PreserveAspectFit
                        smooth: true
                    }
                }
            }
        }
    }
}
