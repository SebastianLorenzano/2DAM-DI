import QtQuick
import QtQuick.Controls

Rectangle {
    id: rectangle
    x: 220
    y: 50
    width: 200
    height: 200
    visible: true
    color: "#b99a3b"
    border.color: "#9d3411"
    border.width: 5
    states: [
        State {
            name: "visible"
            when: rectangle.activated == true

            PropertyChanges {
                target: rectangle
                color: "#0b1030"
                border.color: "#590c0c"
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: rectangle
                        property: "border.color"
                        duration: 1950
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: rectangle
                        property: "color"
                        duration: 1950
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]
    property bool activated: false
}


/*##^##
Designer {
    D{i:0}D{i:3;transitionDuration:2000}
}
##^##*/
