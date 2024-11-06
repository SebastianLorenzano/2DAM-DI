import QtQuick
import QtQuick.Controls 2.15

Button {
    id: button
    height: 35

    text: qsTr("Elementos")
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.leftMargin: -107
    checkable: true
    background: Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        border.color: black
        border.width: 1
        color: "#d3d3d3"
        radius: 20
            width: 100
    }
}
