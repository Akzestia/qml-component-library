import QtQuick 2.0
import QtQuick.Layouts
import qml.components.text_inputs 1.0

Window {
    id: example_text_inputs

    minimumWidth: 800
    maximumWidth: 800
    minimumHeight: 600
    maximumHeight: 600

    visible: true

    ColumnLayout {
        spacing: 20

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        CTextInput {
            id: username_input

            Layout.topMargin: 0
            Layout.bottomMargin: 0

            props {
                c_width: 200
                c_height: 30

                bg_color: "transparent"

                font_color: "#000"
                font_size: 17

                placeholder_text: "User name"
                placeholder_text_color: "cyan"

                c_border: Border {
                    left.width: 2
                    left.color: "#121212"
                }
            }

            Layout.alignment: Qt.AlignCenter
        }

        CTextInput {
            id: password_input

            Layout.topMargin: 20
            Layout.bottomMargin: 0

            props {
                c_width: 200
                c_height: 30

                bg_color: "transparent"

                font_color: "#000"
                font_size: 17

                placeholder_text: "Password"
                placeholder_text_color: "cyan"

                echo_mode: TextInput.Password
                password_char: "*"

                c_border: Border {
                    left.width: 2
                    left.color: "#121212"
                }
            }

            Layout.alignment: Qt.AlignCenter
        }
    }
}
