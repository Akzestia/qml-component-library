import QtQuick 2.0
import qml.components.btn_inputs 1.0

Item {
    id: btn_login

    property BtnLoginProps props: BtnLoginProps {}

    FontLoader {
        id: webFont
        source: btn_login.props.font_url
    }

    width: props.c_width
    height: props.c_height
    Rectangle {
        color: btn_login.props.bg_color
        width: btn_login.props.c_width
        height: btn_login.props.c_height

        border.width: 3
        radius: btn_login.props.radius

        Text {
            font.family: webFont.font.family
            font.pixelSize: 16
            text: qsTr("Login")

            anchors.centerIn: parent
        }
    }
}
