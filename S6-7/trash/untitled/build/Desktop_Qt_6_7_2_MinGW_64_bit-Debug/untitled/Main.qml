import QtQuick

import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackLayout {
        id: stackLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: rectangle.top
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        currentIndex: 0

        View{
            id: view

            Form {
                onEnviar: name => {
                    _text.text = name
                    stackLayout.currentIndex = 1
                }
            }
        }
         View {
            id: view1
            Text {
                id: _text
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    Rectangle {
        id: rectangle
        height: parent.height / 4
        color: "#e9e9e9"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0

        Button {
            id: button
            x: 124
            y: 53
            text: qsTr("Vista 1")
            onClicked: stackLayout.currentIndex = 0
        }

        Button {
            id: button1
            x: 471
            y: 53
            text: qsTr("Vista 2")
            onClicked: stackLayout.currentIndex = 1
        }
    }
}


