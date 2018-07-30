import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

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
        color: appStyle.active
        anchors.fill: parent

        Rectangle {
            id: rectangle4
            width: 400
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.deactive
            radius: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: rectangle3.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0

            TextInput {
                id: textInput4
                property string placeholderText: "Masukan Email"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                Text {
                    text: textInput4.placeholderText
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.secondaryBgColor
                    visible: !textInput4.text
                    font.pixelSize: 18
                }
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }
        }

        Rectangle {
            id: rectangle2
            width: 400
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.deactive
            radius: 10
            anchors.top: rectangle4.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0

            TextInput {
                id: textInput2
                property string placeholderText: "Password"
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    text: textInput2.placeholderText
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.secondaryBgColor
                    visible: !textInput2.text
                    font.pixelSize: 18
                }
                anchors.right: parent.right
                anchors.left: parent.left
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }
        }

        Button {
            id: button
            width: 400
            height: 40
            Text {
                text: qsTr("Login")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.capsColor
                font.pixelSize: 18
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rectangle2.bottom
            anchors.topMargin: 10
            anchors.leftMargin: 10

            style: ButtonStyle {
                    background: Rectangle {
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control.activeFocus ? 2 : 1
                        border.color: appStyle.active
                        radius: 10
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control.pressed ? appStyle.active : appStyle.deactive }
                            GradientStop { position: 1 ; color: control.pressed ? appStyle.active : appStyle.deactive }
                        }
                    }
                }
        }
    }

}

/*##^## Designer {
    D{i:6;anchors_y:0}D{i:9;anchors_y:15}
}
 ##^##*/
