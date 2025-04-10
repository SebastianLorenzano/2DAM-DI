import QtQuick
import QtQuick.Controls 2.15

TextField {
 id: textField
 width: 100
 property string placeHolder: ""
 property bool type: false

 placeholderText: placeHolder
 echoMode: type ? TextInput.Password : TextInput.Normal
    background : Rectangle {
        width: 100
        height: 25
        radius: 8
        border.width: 1
    }
}

