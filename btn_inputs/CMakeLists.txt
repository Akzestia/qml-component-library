cmake_minimum_required(VERSION 4.0.1)
project(btn_inputs)

set(QT_QML_GENERATE_QMLLS_INI ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_add_qml_module(btn_inputs
    URI qml.components.btn_inputs
    VERSION 1.0
    QML_FILES
        BtnLogin.qml
        BtnLoginProps.qml
)
