import QtQuick
import QtQuick.Layouts 2.15

ColumnLayout {
    width: parent.width
    height: parent.height

    Text {
        text: "Elemento"
        font.pixelSize: 18
        width: 80
        height: 60
        anchors.horizontalCenter: card.horizontalCenter
        anchors.bottom: mainRectangle.top
        color: "black"
    }

    Rectangle {
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.maximumHeight: 250
        Layout.maximumWidth: 350
        Layout.minimumHeight: 50
        Layout.minimumWidth: 100
        Layout.preferredHeight: 100
        Layout.preferredWidth: 150
        anchors.horizontalCenter: card.horizontalCenter
        id: card;
        color: "#d7d7d7";
        radius: 25
        width: 150
        height: 80


    }


}
