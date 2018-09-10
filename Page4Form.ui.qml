import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Page {
    id: page1
    width: 1280
    height: 660

    background: Rectangle {
        color: appStyle.background
    }

    header: Label {
        text: qsTr("Registrasi")
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Rectangle {
        id: rectangle
        height: 2
        color: appStyle.border
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }

    Rectangle {
        id: rectangle6
        width: 500
        height: 322
        color: appStyle.bgCard
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        border.width: 2
        border.color: appStyle.border
        radius: 10

        Rectangle {
            id: rectangle4
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.inputTxt
            border.width: 2
            border.color: appStyle.border
            radius: 10
            anchors.top: rectangle3.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0

            TextInput {
                id: textInput4
                property string placeholderText: "Masukan Email"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }

            Text {
                y: 15
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                text: textInput4.placeholderText
                visible: !textInput4.text
                font.pixelSize: 18
            }
        }

        Rectangle {
            id: rectangle3
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.inputTxt
            border.width: 2
            border.color: appStyle.border
            radius: 10
            anchors.top: rectangle2.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0
            TextInput {
                id: textInput3
                property string placeholderText: "Masukan Nomor Telepon"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }

            Text {
                y: 15
                text: textInput3.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !textInput3.text
                font.pixelSize: 18
            }
        }

        Rectangle {
            id: rectangle2
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.inputTxt
            border.width: 2
            border.color: appStyle.border
            radius: 10
            anchors.top: rectangle1.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0
            TextInput {
                id: textInput2
                property string placeholderText: "Masukan Nama Pelanggan"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }

            Text {
                y: 15
                text: textInput2.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !textInput2.text
                font.pixelSize: 18
            }
        }

        Rectangle {
            id: rectangle1
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.inputTxt
            border.width: 2
            border.color: appStyle.border
            radius: 10
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.horizontalCenterOffset: 0
            TextInput {
                id: textInput1
                property string placeholderText: "Masukan Nomor Meja"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }

            Text {
                y: 15
                text: textInput1.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !textInput1.text
                font.pixelSize: 18
            }
            //            TextField {
            //                id: searchBox
            //                placeholderText: "Nomor Meja"
            //                inputMethodHints: Qt.ImhNoPredictiveText
            //                width: 100
            //                horizontalAlignment: Text.AlignHCenter
            //                anchors.horizontalCenter: parent.horizontalCenter
            //                anchors.right: parent.right
            //                anchors.verticalCenter: parent.verticalCenter
            //                background: Rectangle {
            //                    color: appStyle.deactive
            //                    radius: 10
            //                }
            //            }
        }

        Button {
            id: button
            width: 400
            height: 40
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rectangle4.bottom
            anchors.topMargin: 10
            anchors.leftMargin: 10

            Text {
                text: qsTr("Register")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
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
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button
                        }
                    }
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:7;anchors_width:200;anchors_x:540;anchors_y:15}D{i:10;anchors_x:95;anchors_y:15}
D{i:12;anchors_y:"-183"}D{i:17;anchors_height:20;anchors_width:80;anchors_x:88;anchors_y:15}
D{i:16;anchors_x:108;anchors_y:15}D{i:22;anchors_height:200;anchors_width:200;anchors_x:540;anchors_y:47}
}
 ##^##*/
