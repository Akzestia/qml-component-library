cmake_minimum_required(VERSION 4.0.1)
project(btn_inputs)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.9.1)

qt_add_executable(example_btn_inputs
    main.cpp
)

qt_add_qml_module(example_btn_inputs
    URI xxx
    VERSION 1.0
    QML_FILES
        Main.qml
)

target_link_libraries(example_btn_inputs
    PRIVATE
        Qt6::Quick
        btn_inputs
)

include(GNUInstallDirs)
install(TARGETS example_btn_inputs
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
