import QtQuick

Rectangle {
    id: view
    anchors.fill: parent
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.maximumWidth
    height: parent.maximumHeight
    property alias titleText: title.text

    color: "#eeeeee"  // Set the background color here (light blue in this example)

    Text {
        id: title
        text: qsTr("Title")
        font.pixelSize: 36
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
    }
}



