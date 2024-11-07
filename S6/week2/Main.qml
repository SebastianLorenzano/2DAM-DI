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
        width: 120
        height: parent.maximumHeight
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        spacing: 40

        MyButton {
            id: b1
            onClicked: stackLayout.currentIndex = 1
        }

        MyButton {
            id: b2
            text: qsTr("Edición")
            onClicked: stackLayout.currentIndex = 2
        }

        MyButton {
            id: b3
            text: qsTr("Usuarios")
            onClicked: stackLayout.currentIndex = 3
        }

        MyButton {
            id: b4
            text: qsTr("Configuración")
            onClicked: stackLayout.currentIndex = 4
        }
    }

    StackLayout {
        id: stackLayout
        anchors.verticalCenter: column.verticalCenter
        anchors.left: column.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        Layout.fillWidth: true
        Layout.fillHeight: true

        // View 0
        Item {

            View {
                id: view
                titleText: "Choose a menu"
            }
        }

        // View 1
        Item {
            View {
                titleText: b1.text
                anchors.verticalCenter: column.verticalCenter


                GridLayout {
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.verticalCenter: column.verticalCenter
                    anchors.fill: parent
                    rowSpacing: 25
                    columnSpacing: 15
                    anchors.top: parent.top
                    anchors.topMargin: 81  // Adds space between title and grid
                    columns: 3
                    rows: 3
                    Repeater {
                        model: 7
                            Card {

                            }
                    }
                }
                RoundButton {
                    id: roundButton
                    x: 474
                    y: 440
                    text: "+"
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    anchors.bottomMargin: 8
                    anchors.rightMargin: 8
                }
            }
        }

   // View 2
        Item {
            View {
                titleText: b2.text
            }

        }
        // View 3
        Item {
            View {
                titleText: b3.text
            }
        }

        // View 4
        Item {
            View {
                titleText: b4.text
            }
        }
    }
}



