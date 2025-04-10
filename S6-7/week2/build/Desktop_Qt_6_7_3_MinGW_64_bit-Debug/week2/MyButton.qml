import QtQuick
import QtQuick.Controls 2.15

Button {
    id: button


    text: qsTr("Elementos")
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.leftMargin: -107
    checkable: true
    background: Rectangle {
        border.color: black
        border.width: 1
        color: "#d3d3d3"
        radius: 20
        width: 100
        height: 35
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
