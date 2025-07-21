import QtQuick 2.0
import qml.components.text_inputs 1.0

Item {
    id: c_text_input_props

    property real c_width: 0
    property real c_height: 0
    property string bg_color: "#000"
    property real c_radius: 0

    property int font_size: 0
    property string font_color: "#000"
    property string font_family: "#000"

    property string placeholder_text: "#fff"
    property string placeholder_text_color: "#fff"

    property var echo_mode: TextInput.Normal
    property string password_char: ""

    property Border c_border: Border {}
}
