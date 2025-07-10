import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtGitApp2 1.0
import QtQuick.VirtualKeyboard

Window {
    visible: true
    width: 400; height: 300
    title: qsTr("Selam Dünya App")

    Rectangle {
        anchors.fill: parent
        color: "#34495E"

        Column {
            anchors.centerIn: parent
            spacing: 10

            Text {
                id: label
                text: "Sayaç: 0"
                font.pixelSize: 24
                color: "#ECF0F1"
            }

            Button {
                text: "Arttır"
                onClicked: {
                    var sayi = parseInt(label.text.split(": ")[1]) + 1
                    label.text = "Sayaç: " + sayi
                }
            }

            Button {
                text: "Sıfırla"
                onClicked: {
                    label.text = "Sayaç: 0"
                }
            }
        }
    }
}
