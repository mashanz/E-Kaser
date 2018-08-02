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
    width: 720
    height: 480
    title: qsTr("Login")

    property variant appStyle: Style {
        id: style
    }

    Rectangle {
        id: rectangle
        color: appStyle.background
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            width: 452
            height: 338
            color: appStyle.bgCard
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            border.color: appStyle.border
            border.width: 2
            radius: 10

            Image {
                id: image
                x: 181
                y: 8
                width: 150
                height: 118
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: rectangle4.top
                anchors.bottomMargin: 15
                source: "logo.png"
            }

            Button {
                // signal messageRequired
                objectName: "myButton"
                onClicked: {
                    var component = Qt.createComponent("main.qml")
                    var window = component.createObject(this)
                    window.show()
                }
                id: button
                width: 400
                height: 40
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: rectangle2.bottom
                anchors.topMargin: 20
                anchors.leftMargin: 10

                Text {
                    text: qsTr("Login")
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
                id: rectangle2
                width: 400
                height: 40
                anchors.horizontalCenter: parent.horizontalCenter
                color: appStyle.inputTxt
                radius: 10
                anchors.top: rectangle4.bottom
                anchors.topMargin: 20
                anchors.horizontalCenterOffset: 1
                border.color: appStyle.border
                border.width: 2

                Text {
                    id: text1
                    text: textInput2.placeholderText
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.top: parent.top
                    anchors.right: parent.right
                    anchors.left: parent.left
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.hint
                    visible: !textInput2.text
                    font.pixelSize: 18
                }

                TextInput {
                    id: textInput2
                    property string placeholderText: "password"
                    echoMode: TextInput.Password
                    font.bold: true
                    color: appStyle.text
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.left: parent.left
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 18
                }
            }

            Rectangle {
                id: rectangle4
                width: 400
                height: 40
                anchors.horizontalCenter: parent.horizontalCenter
                color: appStyle.inputTxt
                radius: 10
                anchors.verticalCenterOffset: 10
                anchors.verticalCenter: parent.verticalCenter
                anchors.topMargin: 10
                anchors.horizontalCenterOffset: 1
                border.color: appStyle.border
                border.width: 2

                Text {
                    id: text2
                    text: textInput4.placeholderText
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.top: parent.top
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
                    property string placeholderText: "username"
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
    }
}

/*##^## Designer {
    D{i:31;anchors_x:215;anchors_y:232}D{i:32;anchors_x:0;anchors_y:0}D{i:29;anchors_x:158;anchors_y:9}
}
 ##^##*/
