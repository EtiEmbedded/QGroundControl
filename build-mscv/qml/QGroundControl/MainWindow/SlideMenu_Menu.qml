import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 536
    height: 600
    color: "#1e1e1e"

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 12

        Rectangle {
            width: 536; height: 39
            color: "#333"
            RowLayout {
                anchors.fill: parent
                Text { text: "Failsafe Configuration"; color: "white" }
                Label { text: "OUT" }
            }
        }

        Rectangle {
            width: 536; height: 44
            color: "#222"
            Text { anchors.centerIn: parent; text: "Failsafe Mode"; color: "white" }
        }
    }
}
