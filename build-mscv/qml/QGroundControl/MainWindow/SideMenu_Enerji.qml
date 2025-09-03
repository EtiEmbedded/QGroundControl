import QtQuick
import QtQuick.Controls



Rectangle {
    width: 1560
    height: 1080
    color: "black" // Enerji səhifəsi: tam qara

// Power Settings

    Text {
        text: "Power Settings";
        color: "white";
        x: 50; y: 40;
        font.pixelSize: 26; font.bold:  true

        }

    // Configure battery and power management

    Text {
        text: "Configure battery and power management";
        color: "#E8E8E8";
        x: 57; y: 86;
        font.pixelSize: 16; font.bold: true
    }

    // kenar cercive

    Rectangle { x: 50;   y: 149; width: 1488; height: 818; color: "#3D3B3B"; radius: 16; border.width: 1; border.color: "#9D9D9D"


        Column {
            anchors.centerIn: parent
            spacing: 50

        }

    // Single Battery Configuration

    Rectangle {
        width:1488; height: 56;
        color: "#2A2A2A";
        radius: 5
        border.width: 0.5; border.color: "#9D9D9D"

    Text {
        text:"Single Battery Configuration";
        color: "#FFFAFA";
        x: 617; y: 14.5;
        font.pixelSize: 18;font.bold: true }
    }

    // Battery Monitor

    Rectangle { x:30; y:86;
        width:1436; height: 60;
        color: "#2A2A2A"
         radius: 6;

    Text { text:"Battery Monitor";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

    ComboBox {
        id: returnAnalogVoltageOnly
        model: ["Analog Voltage Only","Disabled", "Analog Voltage and Current", "Solo", "Bebop", "SMBus-Generic", "DroneCAN-BatteryInfo", "ESC",
        "Sum Of Selected Monitors", "FuelFlow", "FuelLevelPWM", "SMBUS_SUI6"]
        width: 197
        height: 37
        x: 1221
        y: 11.5
        font.pixelSize: 12
        font.bold: true

        background: Rectangle {
            color: "#3D3B3B"
            radius: 4
            border.color: "#9D9D9D"
            border.width: 0.5
        }

        contentItem: Text {
            text: returnAnalogVoltageOnly.currentText
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
    //Battery Capacity (mAh)

    Rectangle { x:30; y:166;
        width:1436; height: 60;
        color: "#2A2A2A"
         radius: 6;

    Text { text:"Battery Capacity (mAh)";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

    //textBox

    Rectangle { x:1221; y:11.5;
      width:197; height: 37;
      color: "#3D3B3B"
       radius: 4
       border.color: "#9D9D9D"
       border.width: 0.5

    Text { text:"3300                          mAh";
      color: "#FFFFFF"; x: 7.75; y: 6.5;
      font.pixelSize: 15; font.bold: true
    }

  }
    }

    //Minimum Arming Voltage (V)

    Rectangle { x:30; y:246;
        width:1436; height: 60;
        color: "#2A2A2A"
         radius: 6;

    Text { text:"Minimum Arming Voltage (V)";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

     //textBox

    Rectangle { x:1221; y:11.5;
      width:197; height: 37;
      color: "#3D3B3B"
      radius: 4
      border.color: "#9D9D9D"
      border.width: 0.5

    Text { text:"0.0                                    V                           ";
      color: "#FFFFFF"; x: 7.75; y: 6.5;
      font.pixelSize: 15; font.bold: true }

  }
    }

    // Power Sensor

    Rectangle { x:30; y:326;
        width:1436; height: 60;
        color: "#2A2A2A"
        radius: 6;

    Text { text:"Power Sensor";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

    ComboBox {
        id: returnOther
        model: ["Other","Disabled", "Power Module 90 A", "Power Module HV", "3 DR Iris", "Blue Robotics Power Sense Module", "Navigator w/Blue Robotics Power"]
        width: 197
        height: 37
        x: 1221
        y: 11.5
        font.pixelSize: 12
        font.bold: true

        background: Rectangle {
            color: "#3D3B3B"
            radius: 4
            border.color: "#9D9D9D"
            border.width: 0.5
        }

        contentItem: Text {
            text: returnOther.currentText
            color: "#FFFFFF"
            font.bold: true
            font.pixelSize: 15
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 6
        }

    }

    }

    // Current Pin
    Rectangle { x:30; y:406;
        width:1436; height: 60;
        color: "#2A2A2A"
        radius: 6;

    Text { text:"Current Pin";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

    ComboBox {
        id: returnUnknown11
        model: ["Unknown11","Disabled", "Pixhawk/Pixracer/Navio2/Pixhawk2_PM1", "Pixhawk2_PM2", "CubeOrange", "Durandal", "PX4_v1"]
        width: 197
        height: 37
        x: 1221
        y: 11.5
        font.pixelSize: 12
        font.bold: true

        background: Rectangle {
            color: "#3D3B3B"
            radius: 4
            border.color: "#9D9D9D"
            border.width: 0.5
        }

        contentItem: Text {
            text: returnUnknown11.currentText
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

    // Voltage Pin

    Rectangle { x:30; y:486;
        width:1436; height: 60;
        color: "#2A2A2A"
        radius: 6;

    Text { text:"Voltage Pin";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

    ComboBox {
        id: returnUnknown10
        model: ["Unknown10","Disabled", "Pixhawk/Pixracer/Navio2/Pixhawk2_PM1", "Pixhawk2_PM2", "CubeOrange", "Durandal", "PX4_v1"]
        width: 197
        height: 37
        x: 1221
        y: 11.5
        font.pixelSize: 12
        font.bold: true

        background: Rectangle {
            color: "#3D3B3B"
            radius: 4
            border.color: "#9D9D9D"
            border.width: 0.5
        }

        contentItem: Text {
            text: returnUnknown10.currentText
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

    // Voltage Multiplier

    Rectangle { x:30; y:566;
        width:1193; height: 60;
        color: "#2A2A2A"
        radius: 6;

    Text { text:"Voltage Multiplier";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }


    Rectangle { x:978; y:11.5;
        width:197; height: 37;
        color: "#3D3B3B"
        radius: 4
        border.color: "#9D9D9D"
        border.width: 0.5

    Text { text:"11.00                             A/V                           ";
        color: "#FFFFFF"; x: 7.75; y: 6.5;
        font.pixelSize: 15; font.bold: true }

    }
    }

    // Amps per Volt

    Rectangle { x:30; y:646;
        width:1193; height: 60;
        color: "#2A2A2A"
        radius: 6;

    Text { text:"Amps per Volt";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }

      Rectangle { x:978; y:11.5;
        width:197; height: 37;
        color: "#3D3B3B"
        radius: 4
        border.color: "#9D9D9D"
        border.width: 0.5

      Text { text:"25.000                         A/V                           ";
        color: "#FFFFFF"; x: 7.75; y: 6.5;
        font.pixelSize: 15; font.bold: true }

    }
    }

    // Amps Offset

    Rectangle { x:30; y:726;
        width:1193; height: 60;
        color: "#2A2A2A"
        radius: 6;

    Text { text:"Amps Offset";
        color: "#FFFFFF"; x: 30; y: 18;
        font.pixelSize: 16; font.bold: true }


    Rectangle { x:978; y:11.5;
      width:197; height: 37;
      color: "#3D3B3B"
      radius: 4
      border.color: "#9D9D9D"
      border.width: 0.5

  Text { text:"0.000                               V                           ";
      color: "#FFFFFF"; x: 7.75; y: 6.5;
      font.pixelSize: 15; font.bold: true }

  }
    }

    // Calculate1

    Rectangle { x:1247; y:566;
        width:215; height: 60;
        color: "#3D3B3B"; radius: 6;
        border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Calculate";
        color: "#E8E8E8"; x: 30; y: 18;
        font.pixelSize: 18; font.bold: true
        anchors.centerIn: parent
    }

    }

    // Calculate2

    Rectangle { x:1247; y:646;
        width:215; height: 60;
        color: "#3D3B3B"; radius: 6;
        border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Calculate";
        color: "#E8E8E8"; x: 30; y: 18;
        font.pixelSize: 18; font.bold: true
        anchors.centerIn: parent
    }

    }

    // Calculate3

    Rectangle { x:1247; y:726;
        width:215; height: 60;
        color: "#3D3B3B"; radius: 6;
        border.width: 0.5; border.color: "#9D9D9D"

    Text { text:"Calculate";
        color: "#E8E8E8"; x: 30; y: 18;
        font.pixelSize: 18; font.bold: true
        anchors.centerIn: parent
    }

    }
}
    // Skip Button

    Rectangle { id: btn1
        x:1104; y:995;
        width:196; height: 45
        color: "#3D3B3B";
        radius: 6;
        border.width: 0;
        border.color: "#9D9D9D"

    Text { text:"Skip";
        color: "#E8E8E8"; x: 80.5; y: 10.5;
        font.pixelSize: 16; font.bold: true }

    MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: btn1.border.width = 2   // üzərinə gələndə sərhəd qalın olur
            onExited:  btn1.border.width = 0 // çıxanda yenidən incəlir
        }
    }

    // Calibrate Button

    Rectangle {id: btn
        x:1324; y:995
        width:196; height: 45
        color: "#3D3B3B"
        border.width: 0
        border.color: "#9D9D9D"
        radius: 6

    Text { text:"Calibrate";
        color: "#E8E8E8"; x: 53.2; y: 12.28;
        font.pixelSize: 16; font.bold: true;
         }

    MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: btn.border.width = 2   // üzərinə gələndə sərhəd qalın olur
            onExited:  btn.border.width = 0 // çıxanda yenidən incəlir
        }

    }
}
