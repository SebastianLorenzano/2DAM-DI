import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListModel {
        id: usersModel
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            priority: 1
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            priority: 1
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            priority: 1
            }
        ListElement {
            name: "Tarea"
            description: "Realizar tareas de programación"
            priority: 1
            }
    }

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
        anchors.right: column.left
        anchors.top: column.bottom
        anchors.bottom: column.top
        anchors.leftMargin: 6
        anchors.rightMargin: -640
        anchors.topMargin: -480
        anchors.bottomMargin: -480
        anchors.horizontalCenter: column.horizontalCenter
        Layout.fillWidth: true
        Layout.fillHeight: true
        property string currentCardName: ""
        property string currentCardDescription: ""
        property int currentCardPriority: 0
        property int currentCardIndex: -1

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
                id: view1
                titleText: b1.text
                anchors.verticalCenter: column.verticalCenter
                GridView {
                    id: gridView
                    model: usersModel
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.verticalCenter: column.verticalCenter
                    anchors.fill: parent
                    anchors.top: parent.top
                    anchors.topMargin: 81  // Adds space between title and grid
                    cellHeight: 150
                    cellWidth: 250
                    delegate:
                        Card {
                        cardTitle: name
                        cardBody: description
                        priority: priority

                        onEditCardClicked: {
                            stackLayout.currentCardName = cardTitle
                            stackLayout.currentCardDescription = cardBody
                            stackLayout.currentCardPriority = priority
                            stackLayout.currentCardIndex = index
                            stackLayout.currentIndex = 2
                        }
                        onDeleteCardClicked: {
                             usersModel.remove(index)
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
                id: view2
                titleText: b2.text

                ColumnLayout {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 20
                    width: parent.width * 0.8
                    height: parent.height * 0.6

                    TextField {
                        id: titleField
                        Layout.fillWidth: true
                        height: 40
                        placeholderText: "Titulo de la tarea"
                        text: stackLayout.currentCardName
                    }

                    TextField {
                        id: bodyField
                        Layout.fillWidth: true
                        height: 40
                        placeholderText: "Descripcion de la tarea"
                        text: stackLayout.currentCardDescription
                    }

                    Row {
                        anchors.horizontalCenter: parent.horizontalCenter // Align horizontally
                        spacing: 10

                        Button {
                            text: "Modificar Tarea"
                            onClicked: {
                                if (stackLayout.currentCardIndex >= 0) {
                                    usersModel.set(stackLayout.currentCardIndex, {
                                        name: titleField.text,
                                        description: bodyField.text,
                                        priority: 1
                                    })
                                }
                                stackLayout.currentCardName = ""
                                stackLayout.currentCardDescription = ""
                                stackLayout.currentCardPriority = 1
                                stackLayout.currentCardIndex = -1
                                stackLayout.currentIndex = 1
                            }
                        }

                        Button {
                            text: "Crear Tarea"
                            onClicked: {
                                if (titleField.text !== "" && bodyField.text !== "") {
                                    usersModel.append({
                                        name: titleField.text,
                                        description: bodyField.text,
                                        priority: 1
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }


        // View 3
        Item {
            View {
                id: view3
                titleText: b3.text
            }
        }

        // View 4
        Item {
            View {
                id: view4
                titleText: b4.text
            }
        }   
    }
}



