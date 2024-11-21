import QtQuick

Rectangle {
    width: 150
    height: 100
    property string cardName: ""
    property string cardDescription: ""

    color: "#FFFFFF"

    Column {
        anchors.verticalCenter: parent.verticalCenter
        Text {
            text: cardName
            width: 40
            height: 20
        }

        Text {
            text: cardDescription
            width: 40
            height: 20
        }
    }
}
