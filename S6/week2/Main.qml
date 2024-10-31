import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        id: column
        x: 0
        y: 0
        width: 214
        height: 480
        spacing: 10

        Button {
            id: button
            width: 125
            text: qsTr("Elementos")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: -107
            checkable: true
            background: Rectangle {
                border.color: black
                border.width: 1
            }
        }
        Button {
            id: button1
            width: 125
            text: qsTr("Edición")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.rightMargin: 2
            checkable: true
            background: Rectangle {
                border.color: black
                border.width: 1
            }
        }
        Button {
            id: button2
            width: 125
            text: qsTr("Usuarios")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: 0
            checkable: true
            background: Rectangle {
                border.color: black
                border.width: 1
            }
        }
        Button {
            id: button3
            width: 125
            text: qsTr("Configuración")
            anchors.horizontalCenter: parent.horizontalCenter
            checkable: true
            background: Rectangle {
                border.color: black
                border.width: 1
            }
        }
    }
}

