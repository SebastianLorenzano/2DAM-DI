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
            onClicked:
            {
                stackLayout.currentIndex = 1
                stackLayout.isEditing = false
                stackLayout.currentCardName = ""
                stackLayout.currentCardDescription = ""
                stackLayout.currentCardIndex = -1
            }
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
        property bool isEditing: false
        property string currentCardName: ""
        property string currentCardDescription: ""
        property int currentCardIndex: -1



        //View 0

        Item {
            View {
                id: view
                title: "Choose a Menu"
            }
        }


        //View 1
        Item {
            View {
                id: viewElements
                title: "Usuarios"
                anchors.verticalCenter: column.verticalCenter

                GridView {
                    anchors.fill: parent
                    anchors.verticalCenter: columnLayout.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: viewElements.bottom
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

                        onEditClicked: {
                            stackLayout.currentCardName = cardName
                            stackLayout.currentCardDescription = cardDescription
                            stackLayout.currentCardIndex = index
                            stackLayout.isEditing = true
                            stackLayout.currentIndex = 2
                        }

                        onDeleteClicked: {
                            listmodel.remove(index)
                        }


                    }

                }
            }
        }

        // View 2
        Item {
            View {
                title: "Edicion"
                anchors.verticalCenter: column.verticalCenter

                ColumnLayout {
                    anchors.fill: parent
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30

                    TextField {
                        id: textField1
                        Layout.fillWidth: true
                        height: 50
                        placeholderText: " Nombre de la tarea"
                        text: stackLayout.currentCardName

                    }

                    TextField {
                        id: textField2
                        Layout.fillWidth: true
                        height: 50
                        placeholderText: "Descripcion de la tarea"
                        text: stackLayout.currentCardDescription
                    }

                    Button {
                        id: editingButton
                        text: "Crear"
                        Layout.alignment: Qt.AlignHCenter
                        height: 60
                        width: 120

                        onClicked: {
                            if (textField1.text !== "" && textField2.text !== "")
                                listmodel.append(
                                    {
                                        name: textField1.text,
                                        description: textField2.text}
                                    )
                        }


                    }


                }

            }
        }
    }

    StateGroup {
        id: stateGroup
        states: [
            State {
                name: "State1"
                when: stackLayout.isEditing

                PropertyChanges {
                    target: editingButton
                    text: "Edit"

                    onClicked: {
                        if (stackLayout.currentCardIndex >= 0 &&
                                textField1.text !== "" && textField2.text !== "")
                        {

                            listmodel.set(stackLayout.currentCardIndex, {
                                              name: textField1.text,
                                              description: textField2.text
                                          })
                            stackLayout.currentIndex = 1
                            stackLayout.isEditing = false
                            stackLayout.currentCardName = ""
                            stackLayout.currentCardDescription = ""
                            stackLayout.currentCardIndex = -1
                        }
                    }

                }

                PropertyChanges {
                    target: textField1
                    text: "Mama esto funciona"
                }
            }
        ]
    }


}
