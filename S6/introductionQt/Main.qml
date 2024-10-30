import QtQuick
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyComponent {
        id: myComponent
        anchors.verticalCenter: _switch.verticalCenter
        anchors.left: _switch.right
        anchors.right: _switch.left
        anchors.top: _switch.bottom
        anchors.bottom: _switch.top
        anchors.leftMargin: 137
        anchors.rightMargin: -430
        anchors.topMargin: -114
        anchors.bottomMargin: -114
        anchors.horizontalCenter: _switch.horizontalCenter
        activated: _switch.checked
    }

    Switch {
        id: _switch
        x: 149
        y: 86
        text: qsTr("Switch")
        checked: myComponent.activated
    }

    Login {
        id: login
        x: 294
        y: 256
    }

    Login {
        id: login1
        x: 294
        y: 326
        type: true
    }

    Button {
        id: button
        x: 294
        y: 390
        text: qsTr("Aceptar")
        background: Rectangle {
            color: "#caffce"
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#26282a"
            border.width: 1
            radius: 12
        }

        Connections {
            target: button
            onClicked: {
                if (login.text === "admin" && login1.text === "1234") {
                    _text.state = "ValidCredentials"
                }
                else if (login.text === "admin" && login1.text !== "1234") {
                    _text.state = "InvalidPassword"
                }
                else {
                     _text.state = "InvalidCredentials"
                }
            }
        }
    }

    Text {
        id: _text
        x: 293
        y: 354
        color: "#00000000"
        text: qsTr("Contraseña Invalida")
        font.pixelSize: 12
    }

    StateGroup {
        id: stateGroup
        states: [
            State {
                name: "ValidCredentials"

                PropertyChanges {
                    target: _text
                    x: 293
                    y: 354
                    color: "#1a990a"
                    text: qsTr("Contraseña Invalida")
                }
            },
            State {
                name: "InvalidCredentials"

                PropertyChanges {
                    target: _text
                    x: 281
                    y: 354
                    color: "#8b000b"
                    text: qsTr("Credenciales Incorrectas")
                }
            },
            State {
                name: "InvalidPassword"

                PropertyChanges {
                    target: _text
                    x: 293
                    y: 354
                    color: "#816908"
                }
            }
        ]
    }
}
