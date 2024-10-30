import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 73
        width: 130
        color: "#d52828"
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter
        anchors.topMargin: 0
        anchors.bottomMargin: 110
    }

    Rectangle {
        id: rectangle1
        color: "#1365ff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 440
        anchors.rightMargin: 70
        anchors.topMargin: 0
        anchors.bottomMargin: 350
    }
}
