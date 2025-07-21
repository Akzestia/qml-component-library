pragma ComponentBehavior: Bound
import QtQuick 2.0
import qml.components.text_inputs 1.0

Item {
    id: c_placeholder

    property PlaceholderProps props: PlaceholderProps {}

    Timer {
        id: timer
        repeat: true
        interval: c_placeholder.props.timer_interval
    }

    FontLoader {
        id: webFont
        source: c_placeholder.props.placeholder_font_url
    }

    function playAnimation() {
        let item = rp.itemAt(props.placeholder_animation_index++);
        if (item) {
            item.y = props.y_axis_offset;
            item.font.pixelSize = props.placeholder_animation_font_pixelsize;
            item.color = "cyan";
        }
        if (props.placeholder_animation_index >= rp.count) {
            timer.stop();
        }
    }

    function playAnimationReverse() {
        let item = rp.itemAt(props.placeholder_animation_index--);
        if (item) {
            item.y = 0;
            item.font.pixelSize = props.placeholder_font_pixelsize;
            item.color = "#000";
        }
        if (props.placeholder_animation_index < 0) {
            timer.stop();
        }
    }

    function startPlaceHolderAnimation(cb) {
        timer.interval = 5;
        timer.triggered.disconnect(c_placeholder.playAnimationReverse);
        props.placeholder_animation_index = 0;
        timer.triggered.connect(c_placeholder.playAnimation);
        timer.start();
    }

    function startPlaceHolderAnimationReverse(cb) {
        timer.interval = 5;
        timer.triggered.disconnect(c_placeholder.playAnimation);
        timer.triggered.connect(c_placeholder.playAnimationReverse);
        timer.start();
    }

    width: props.placeholder_width
    height: props.placeholder_height

    Repeater {
        id: rp

        model: c_placeholder.props.placeholder_text.length

        Text {

            font.family: webFont.font.family

            required property int index

            text: c_placeholder.props.placeholder_text[index]
            x: index * 16
            y: 0
            font.pixelSize: c_placeholder.props.placeholder_font_pixelsize

            Behavior on y {
                NumberAnimation {
                    duration: 180
                    easing.type: Easing.Linear
                }
            }
            Behavior on font.pixelSize {
                NumberAnimation {
                    duration: 180
                    easing.type: Easing.Linear
                }
            }
            Behavior on color {
                ColorAnimation {
                    duration: 180
                }
            }
        }
    }
}
