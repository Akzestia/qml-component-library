import QtQuick 2.0
import QtQuick.Layouts
import qml.components.btn_inputs 1.0

Window {
    id: btn_inputs_example

    minimumWidth: 800
    maximumWidth: 800
    minimumHeight: 600
    maximumHeight: 600

    visible: true

    ColumnLayout {

        spacing: 20
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        BtnLogin {
            id: login_btn

            props {
                c_width: 200
                c_height: 60
                bg_color: "transparent"
            }

            Layout.alignment: Qt.AlignCenter
        }
    }
}
