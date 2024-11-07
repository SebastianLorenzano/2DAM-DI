import QtQuick
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    anchors.fill: parent
    signal enviar(string name)

    TextField {
        id: textField
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        placeholderText: qsTr("Usuario")
    }

    Button {
        id: button2
        text: qsTr("Button")
        anchors.top: textField.bottom
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: enviar(textField.text)
    }
}
