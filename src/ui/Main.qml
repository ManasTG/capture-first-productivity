import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 400

    title: "Todo App"

    // Stores data
    ListModel {
        id: todoModel
    }

    Column {
        spacing: 5

        // Header Label
        Label {
            text: "Todo App"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Divider Line
        Rectangle {
            width: parent.width
            height: 1
            color: "gray"
        }

        // Contains button and TextField for tasks
        Rectangle {
            width: 400
            height: 100
            color: "gray"

            Button {
                text: "Add Task"
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    inputBox.visible = true
                    inputBox.forceActiveFocus()
                }
            }

            TextField {
                anchors.centerIn: parent
                id: inputBox
                text: "Input"
                cursorVisible: false
                visible: false

                onAccepted: {
                    visible = false
                    text = ""

                    todoModel.append({
                        task: text,
                        completed: false
                    })
                }
            }
        }

        Label {
            text: "Inbox"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Shows the Inbox tasks
        ListView {
            id: doingTasks
            width: 300
            height: 200

            model: todoModel

            delegate: Row {
                spacing: 20

                CheckBox {
                    onClicked: {
                        completed: true
                    }
                }

                Label {
                    text: task
                }

                Button {
                    text: "Delete"

                    onClicked: {
                        todoModel.remove(index)
                    }
                }
            }
        }

        // Shows the Completed tasks (Incomplete)
        Label {
            text: "Completed"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Stores the completed tasks info
        ListView {
            id: doneTasks

            delegate: Row {
                spacing: 20

                Label {
                    text: task
                }
            }
        }
    }
}
