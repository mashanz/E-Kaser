import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Window {
    id: window
    visible: true
    width: 800
    height: 600
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
            x: 200
            y: 0
            width: 400
            height: 50
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
                Text {
                    text: textInput4.placeholderText
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.secondaryBgColor
                    visible: !textInput4.text
                    font.pixelSize: 18
                }
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 15
                anchors.top: parent.top
                anchors.topMargin: 15
                anchors.right: parent.right
                anchors.left: parent.left
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }
        }

        Rectangle {
            id: rectangle2
            x: 200
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.deactive
            radius: 10
            anchors.top: rectangle4.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0

            TextInput {
                id: textInput2
                property string placeholderText: "Password"
                Text {
                    text: textInput2.placeholderText
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.secondaryBgColor
                    visible: !textInput2.text
                    font.pixelSize: 18
                }
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 15
                anchors.top: parent.top
                anchors.topMargin: 15
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
            text: qsTr("Login")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rectangle2.bottom
            anchors.topMargin: 10
            anchors.left: rectangle3.right
            anchors.leftMargin: 10
        }
    }

}

/*##^## Designer {
    D{i:6;anchors_y:0}D{i:9;anchors_y:15}
}
 ##^##*/
