import QtQuick
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Switch {
        id: _switch
        x: 428
        y: 176
        text: qsTr("Switch")

    }

    MyRectangle {
        id: myRectangle
        x: 141
        y: 121
        isActivated: _switch.checked
    }


}
