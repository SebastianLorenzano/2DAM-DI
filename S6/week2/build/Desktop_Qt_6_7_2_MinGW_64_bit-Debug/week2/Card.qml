import QtQuick
import QtQuick.Layouts 2.15
import QtQuick.Controls

Rectangle {
    id: card
    property string cardTitle: "Tarea"
    property string cardBody: "Realizar tareas de programación"
    width: 200
    height: 100
    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.maximumHeight: 250
    Layout.maximumWidth: 350
    Layout.minimumHeight: 50
    Layout.minimumWidth: 100
    Layout.preferredHeight: 100
    Layout.preferredWidth: 150
    anchors.horizontalCenter: card.horizontalCenter
    color: "#d7d7d7";
    radius: 25

    Column {
        spacing: 5

        Text {
            text: cardTitle
            font.pixelSize: 14
            height: 25
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: mainRectangle.top
            color: "black"
        }

        Text {
            text: cardBody
            font.pixelSize: 14
            width: 200
            height: 40
            anchors.bottom: mainRectangle.top
            color: "black"
        }

        Rectangle {
            width: 200
            height: 30
            color: "#ffffff"
            Row {
                x: 21
                y: 0
                spacing: 30
                anchors.verticalCenter: parent.verticalCenter
                Button {
                    text: "Modificar"
                    anchors.verticalCenter: parent.verticalCenter
                    height: 23
                    background: Rectangle {
                        width: 70
                        color: "#d7d7d7"
                        border.color: black
                        border.width: 1
                    }

                }

                Button {
                    text: "Eliminar"
                    height: 23
                    anchors.verticalCenter: parent.verticalCenter
                    background: Rectangle {
                        width: 70
                        color: "#d7d7d7"
                        border.color: black
                        border.width: 1
                    }
                }
            }
        }
    }
}



