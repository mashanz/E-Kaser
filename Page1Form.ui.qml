import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 1280
    height: 660

    background: Rectangle {
        color: appStyle.active
    }

    header: Label {
        text: qsTr("Registrasi")
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.deactive
    }

    Rectangle {
        id: rectangle
        height: 5
        color: appStyle.deactive
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }

    Rectangle {
        id: rectangle6
        width: 500
        height: 280
        color: appStyle.active
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Rectangle {
            id: rectangle4
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.deactive
            radius: 10
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
            id: rectangle3
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.deactive
            radius: 10
            anchors.top: rectangle2.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0
            TextInput {
                id: textInput3
                property string placeholderText: "Masukan Nomor Telepon"
                Text {
                    text: textInput3.placeholderText
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.secondaryBgColor
                    visible: !textInput3.text
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
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.deactive
            radius: 10
            anchors.top: rectangle1.bottom
            anchors.topMargin: 10
            anchors.horizontalCenterOffset: 0
            TextInput {
                id: textInput2
                property string placeholderText: "Masukan Nama Pelanggan"
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

        Rectangle {
            id: rectangle1
            width: 400
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: appStyle.deactive
            radius: 10
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.horizontalCenterOffset: 0
            TextInput {
                id: textInput1
                property string placeholderText: "Masukan Nomor Meja"
                Text {
                    text: textInput1.placeholderText
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: appStyle.secondaryBgColor
                    visible: !textInput1.text
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



    }

}

/*##^## Designer {
    D{i:7;anchors_width:200;anchors_x:540}D{i:17;anchors_height:20;anchors_width:80}D{i:13;anchors_y:170}
D{i:12;anchors_y:"-183"}D{i:22;anchors_height:200;anchors_width:200;anchors_x:540;anchors_y:47}
}
 ##^##*/
