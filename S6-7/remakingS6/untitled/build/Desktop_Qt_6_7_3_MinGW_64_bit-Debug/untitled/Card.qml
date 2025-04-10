import QtQuick
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    width: 150
    height: 100
    property string cardName: ""
    property string cardDescription: ""
    signal editClicked(string name, string description)
    signal deleteClicked()

    color: "#FFFFFF"

    Column {
        id: column
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: cardName
            horizontalAlignment: Text.AlignLeft
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            width: 130
            height: 30
        }

        Text {
            text: cardDescription
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            width: 130
            height: 30
        }

        Row {
            anchors.topMargin: 10
            spacing:50
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: button
                text: qsTr("Edit")
                onClicked: editClicked(cardName, cardDescription)
            }

            Button {
                id: button1
                text: qsTr("Delete")
                onClicked: deleteClicked()
            }

        }

    }
}
