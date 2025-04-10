import QtQuick

Rectangle {
    anchors.fill: parent

    property string title: ""
    color: "#f0f0f0"  // Set the background color here (light blue in this example)


    Text {

        text: title
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 36
        font.bold: true

    }

}
