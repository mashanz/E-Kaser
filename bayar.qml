import QtQuick 2.9
import QtQuick 2.2
import QtQuick.Window 2.2
//import QtQuick.Controls 2.2

import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

import QtQuick.Controls.Styles 1.4

Window {
    id: window
    visible: true
    width: 400
    height: 400
    title: qsTr("Bayar")
    onActiveFocusItemChanged: {
        if (!activeFocusItem) {
            window.visible = false
        }
    }

    property variant appStyle: Style {
        id: style
    }

    Rectangle {
        id: rectangle
        color: appStyle.background
        anchors.rightMargin: 0
        anchors.fill: parent

        Button {
            signal messageRequired
            y: 287
            objectName: "myButton"
            id: button
            width: 50
            height: 50
            z: 1
            anchors.horizontalCenterOffset: -28
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            anchors.leftMargin: 10

            Text {
                text: qsTr("0")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: appStyle.border
                    radius: 10
                    gradient: Gradient {
                        GradientStop { position: 0 ; color: control.pressed ? appStyle.inputTxt : appStyle.button }
                        GradientStop { position: 1 ; color: control.pressed ? appStyle.inputTxt : appStyle.button }
                    }
                }
            }
        }

        Rectangle {
            id: rectangle1
            width: 288
            height: 338
            color: appStyle.bgCard
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            border.color: appStyle.border
            border.width: 2
            radius: 10

            Rectangle {
                id: rectangle4
                width: 220
                height: 40
                anchors.horizontalCenter: parent.horizontalCenter
                color: appStyle.inputTxt
                radius: 10
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.horizontalCenterOffset: 0
                border.color: appStyle.border
                border.width: 2

                Text {
                    id: text2
                    text: textInput4.placeholderText
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.left: parent.left
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.hint
                    visible: !textInput4.text
                    font.pixelSize: 18
                }

                TextInput {
                    id: textInput4
                    property string placeholderText: "Nominal"
                    font.bold: true
                    color: appStyle.text
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.left: parent.left
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 18
                }
            }
        }

        Button {
            id: button1
            x: 2
            y: 231
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("2")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -28
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button2
            x: -4
            y: 175
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("5")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -28
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button3
            x: -3
            y: 119
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("8")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -28
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button4
            x: 6
            y: 287
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("*")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 28
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button5
            x: 8
            y: 231
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("3")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 28
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button6
            x: 2
            y: 175
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("6")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 28
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button7
            x: 3
            y: 119
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("9")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 28
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button8
            x: 4
            y: 287
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("#")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button9
            x: 6
            y: 231
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("1")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button10
            x: 0
            y: 175
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("4")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button11
            x: 1
            y: 119
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("7")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button12
            x: 6
            y: 287
            width: 50
            height: 50
            onClicked: {
                window.visible = false
            }
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button2
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button2
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("OK")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button13
            x: 8
            y: 231
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("-")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button14
            x: 2
            y: 175
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("+")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }

        Button {
            id: button15
            x: 3
            y: 119
            width: 50
            height: 50
            style: ButtonStyle {
                background: Rectangle {
                    radius: 10
                    border.color: appStyle.border
                    border.width: control.activeFocus ? 2 : 1
                    implicitWidth: 100
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }

                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }
                    }
                    implicitHeight: 25
                }
            }
            Text {
                color: appStyle.background
                text: qsTr("C")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
            anchors.leftMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 84
            anchors.top: rectangle2.bottom
            anchors.topMargin: 20
            z: 1
            objectName: "myButton"
        }
    }
}

/*##^## Designer {
    D{i:29;anchors_x:158;anchors_y:9}D{i:32;anchors_x:0;anchors_y:0}
}
 ##^##*/
