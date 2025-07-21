import QtQuick 2.0
import QtQuick.Layouts
import qml.components.text_inputs 1.0

Item {
    id: c_text_input

    property CTextInputProps props: CTextInputProps {}

    property alias text: text_input.text

    width: c_text_input.props.c_width
    height: c_text_input.props.c_height

    Rectangle {
        id: text_input_container

        width: c_text_input.props.c_width
        height: c_text_input.props.c_height
        color: c_text_input.props.bg_color
        radius: c_text_input.props.c_radius

        border.width: 0

        MouseArea {
            id: border_area
            hoverEnabled: true

            anchors.fill: parent

            onEntered: {
                placeholder.startPlaceHolderAnimation();
                bottom_border.width = c_text_input.props.c_width;
            }

            onExited: {
                if (text_input.text.length <= 0) {
                    placeholder.startPlaceHolderAnimationReverse();
                }
                bottom_border.width = 0;
            }
        }

        ColumnLayout {
            width: parent.width
            height: parent.height
            z: 1

            TextInput {
                id: text_input
                z: 1

                passwordCharacter: c_text_input.props.password_char
                echoMode: c_text_input.props.echo_mode

                Layout.fillWidth: true
                Layout.alignment: Qt.AlignCenter

                color: c_text_input.props.font_color
                font.pixelSize: c_text_input.props.font_size
            }

            Rectangle {
                id: bottom_border
                z: 0

                implicitHeight: c_text_input.props.c_border.left.width
                color: c_text_input.props.c_border.left.color

                Component.onCompleted: {
                    console.log(c_text_input.props.c_border.left.color);
                    console.log(c_text_input.props.c_border.left.width);
                }

                Layout.topMargin: 3
                Layout.alignment: Qt.AlignBottom | Qt.AlignLeft

                Behavior on width {
                    NumberAnimation {
                        duration: 200
                    }
                }
            }
        }

        Placeholder {
            id: placeholder
            z: -2

            props {
                placeholder_text: c_text_input.props.placeholder_text
                placeholder_color: c_text_input.props.placeholder_text_color
            }

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
        }
    }
}
