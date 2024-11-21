import QtQuick
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListModel {
        id: listmodel
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            }
    }



    ColumnLayout {
        id: columnLayout
        width: 89
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 529
        anchors.topMargin: 0
        anchors.bottomMargin: 0


        Button  {
            text: "Usuarios"
            onClicked: stackLayout.currentIndex = 1
        }

        Button  {
            text: "Edicion"
            onClicked: stackLayout.currentIndex = 2
        }
    }


    StackLayout {
        id: stackLayout

        anchors.left: columnLayout.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        Layout.fillWidth: true
        Layout.fillHeight: true



        //View 0

        Item {
            View {
                title: "Choose a Menu"
            }
        }


        //View 1
        Item {
            View {
                title: "Usuarios"
                anchors.verticalCenter: column.verticalCenter

                GridView {
                    anchors.fill: parent
                    anchors.verticalCenter: columnLayout.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    model: listmodel
                    anchors.leftMargin: 30
                    anchors.topMargin: 100
                    anchors.rightMargin: 30
                    cellHeight: 150
                    cellWidth: 250

                    delegate:
                        Card {
                        cardName: name
                        cardDescription: description
                    }
                }
            }
        }

        // View 2
        Item {
            View {
                title: "Edicion"

            }
        }
    }


}
