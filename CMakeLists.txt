cmake_minimum_required(VERSION 3.20)

project(capture-first-productivity LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)   # Exports a complie file to integrate clang with qml

set(CMAKE_CXX_STANDARD 23)  # compilier
set(CMAKE_CXX_STANDARD_REQUIRED ON) # Standard is required


find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(cpf
    src/app/main.cpp
)

qt_add_qml_module(cpf
    URI CaptureFirstProductivity
    VERSION 1.0
    QML_FILES
        src/ui/Main.qml
)

target_link_libraries(cpf
    PRIVATE Qt6::Quick
)

