import QtQuick 2.0

QtObject {
    id: placeholder_props

    property string placeholder_text: "ユーザー名"

    property int placeholder_animation_index: 0

    property real y_axis_offset: -20
    property real timer_interval: 5

    property string placeholder_color: "#000"
    property string placeholder_animation_color: "#000"

    property real placeholder_font_pixelsize: 16
    property real placeholder_animation_font_pixelsize: 10

    property real placeholder_animation_duraion: 130

    property real placeholder_width: 200
    property real placeholder_height: 30

    property string placeholder_font_url: "https://db.onlinewebfonts.com/t/4e4bda9dd3454cc0354441c2bf70dd38.ttf"
}
