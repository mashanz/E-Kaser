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
        text: qsTr("History")
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
        id: rectMeja
        width: 100
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.left: parent.left
        anchors.leftMargin: 100
        anchors.top: parent.top
        anchors.topMargin: -45

        TextInput {
            id: inputMeja
            property string placeholderText: "No Meja.."
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: inputMeja.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !inputMeja.text
                font.pixelSize: 18
            }
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: rectNama
        width: 246
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.left: rectMeja.right
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: -45

        TextInput {
            id: inputNama
            property string placeholderText: "Nama"
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: inputNama.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !inputNama.text
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
        id: cari
        anchors.top: parent.top
        anchors.topMargin: -45
        anchors.left: rectNama.right
        anchors.leftMargin: 10
        Text {
            text: qsTr("Cari")
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: appStyle.background
            font.pixelSize: 18
        }
        anchors.right: button1.left
        anchors.rightMargin: 10
        style: ButtonStyle {
            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                border.width: control.activeFocus ? 2 : 1
                border.color: appStyle.border
                radius: 10
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: control.pressed ? appStyle.background : appStyle.button2
                    }
                }
            }
        }
    }

    TableView {
        id: tableView3
        anchors.top: rectangle.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.topMargin: -2
        TableViewColumn {
            id: checked
            width: tableView3.viewport.width * 1 / 20
            movable: false
            delegate: CheckBox {
                anchors.left: parent.left
                enabled: true
                checked: styleData.value
                anchors.leftMargin: parent.width / 2 - 6
            }
            role: "checked"
            title: ""
            resizable: false
        }

        TableViewColumn {
            id: meja
            width: tableView3.viewport.width * 1 / 20
            movable: false
            role: "meja"
            title: "Meja"
            resizable: false
        }

        TableViewColumn {
            id: nama
            width: tableView3.viewport.width * 4 / 20
            movable: false
            role: "nama"
            title: "Nama"
            resizable: false
        }

        TableViewColumn {
            id: time
            width: tableView3.viewport.width * 10 / 20
            movable: false
            role: "time"
            title: "Waktu"
            resizable: false
        }

        ListModel {
            id: pesananya
            ListElement {
                time: "Senin, 10 Juni 2018 10:00"
                checked: true
                meja: "1"
                nama: "Urik"
            }

            ListElement {
                time: "Senin, 10 Juni 2018 17:00"
                checked: true
                meja: "2"
                nama: "Paijo"
            }

            ListElement {
                time: "Senin, 10 Juni 2018  16:16"
                checked: true
                meja: "5"
                nama: "Bejo"
            }
        }
        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem.implicitHeight * 1.2
                color: appStyle.header1
                Text {
                    id: textItem
                    color: appStyle.background
                    text: styleData.value
                    elide: Text.ElideRight
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    renderType: Text.NativeRendering
                }

                Rectangle {
                    width: 1
                    color: appStyle.header1
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottomMargin: 1
                    anchors.topMargin: 1
                }

                CheckBox {
                    id: activateAllEvents
                    anchors.left: parent.left
                    visible: styleData.column === 0
                    checked: true
                    anchors.leftMargin: parent.width / 2 - 6
                    anchors.top: parent.top
                    anchors.topMargin: 1
                }
            }
        }
        Layout.minimumWidth: 400
        Layout.minimumHeight: 240
        currentRow: 0
        frameVisible: false
        rowDelegate: Rectangle {
            id: rowDelegate
            width: childrenRect.width
            height: 50
            color: styleData.alternate ? appStyle.bgCard : appStyle.background
            border.color: appStyle.header1
        }
        Layout.preferredWidth: 600
        itemDelegate: Rectangle {
            color: "#00000000"
            Text {
                id: text1
                color: appStyle.text
                text: styleData.value
                anchors.left: parent.left
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                wrapMode: Text.Wrap
                renderType: Text.NativeRendering
            }
            border.color: appStyle.header1
        }
        sortIndicatorVisible: true
        model: pesananya
        Layout.preferredHeight: 400
    }
}
