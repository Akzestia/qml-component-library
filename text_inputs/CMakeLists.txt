cmake_minimum_required(VERSION 4.0.1)
project(text_inputs)

set(QT_QML_GENERATE_QMLLS_INI ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_add_qml_module(text_inputs
    URI qml.components.text_inputs
    VERSION 1.0
    RESOURCE_PREFIX /
    QML_FILES
        CTextInput.qml
        BorderSide.qml
        Border.qml
        Placeholder.qml
        PlaceholderProps.qml
        CTextInputProps.qml
)
