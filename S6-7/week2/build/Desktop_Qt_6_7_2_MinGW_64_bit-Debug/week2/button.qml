import QtQuick
import QtQuick.Controls 2.15

Button {
    id: button
    x: 269
    y: 216
    text: qsTr("Button")
    checkable: true
    states: [
        State {
            name: "State1"
            when: button.checked

            PropertyChanges {
                target: button
                checked: true
            }


        }
    ]

    background: Rectangle {
        color: button.checked ? "#ffffff" : "#d0d0d0"
        border.color: "black"
        border.width: 2
        radius: 5
    }
}


