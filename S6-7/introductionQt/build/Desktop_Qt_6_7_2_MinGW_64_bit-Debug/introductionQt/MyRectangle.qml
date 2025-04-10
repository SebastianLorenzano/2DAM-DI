import QtQuick

Rectangle {
    id: rectangle
    width: 200
    height: 200
    property bool isActivated: false
    states: [
        State {
            name: "State1"
            when: !rectangle.isActivated

            PropertyChanges {
                target: rectangle
                color: "#d51818"
            }
        },
        State {
            name: "State2"
            when: rectangle.isActivated

            PropertyChanges {
                target: rectangle
                color: "#2b42ce"
            }
        }
    ]

}
