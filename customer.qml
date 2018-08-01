import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

import QtQuick.Controls.Styles 1.2

Window {
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Daftar Pesanan")

    property variant appStyle: Style {
        id: style
    }

    Rectangle {
        id: rectangle
            color: appStyle.background
            anchors.fill: parent
    }

    Label {
        id : label1
        text: qsTr("Total")
        anchors.right: parent.right
        anchors.rightMargin: 50
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button2
    }

    Label {
        id : labelTotal
        text: qsTr("Rp 1.200.500")
        anchors.top: label1.bottom
        anchors.topMargin: -25
        anchors.right: parent.right
        anchors.rightMargin: 10
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Label {
        id : labelMeja
        text: qsTr("Meja")
        anchors.left: parent.left
        anchors.leftMargin: 50
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button2
    }

    Label {
        id : labelMeja1
        text: qsTr("5")
        anchors.top: labelMeja.bottom
        anchors.topMargin: -25
        anchors.horizontalCenter: labelMeja.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Label {
        id : labelCustomer
        text: qsTr("Customer")
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button2
    }

    Label {
        id : labelCustomer1
        text: qsTr("Saya Budi Dong")
        anchors.top: labelCustomer.bottom
        anchors.topMargin: -25
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    TableView {
        id: tableView
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: labelCustomer1.bottom
        anchors.topMargin: 9
        currentRow: 0
        frameVisible: false
        sortIndicatorVisible: true
        Layout.minimumWidth: 400
        Layout.preferredWidth: 600
        Layout.preferredHeight: 400
        Layout.minimumHeight: 240

        TableViewColumn {
            id: qty
            title: "Qty"
            role: "qty"
            movable: false
            resizable: false
            width: tableView.viewport.width * 1 / 10
        }

        TableViewColumn {
            id: menu
            title: "Menu"
            role: "menu"
            movable: false
            resizable: false
            width: tableView.viewport.width * 3 / 10
        }

        TableViewColumn {
            id: catat
            title: "Catat"
            role: "catat"
            movable: false
            resizable: false
            width: tableView.viewport.width / 5
        }

        TableViewColumn {
            id: price1
            title: "Harga Satuan"
            role: "price1"
            movable: false
            resizable: false
            width: tableView.viewport.width / 5
        }

        TableViewColumn {
            id: total
            title: "Sub Total"
            role: "subtotal"
            movable: false
            resizable: false
            width: tableView.viewport.width / 5
        }

        itemDelegate: Text {
            color:  styleData.row > 2 ? "red" : "black"
            text: styleData.value
            anchors.verticalCenter: parent.verticalCenter
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem.implicitHeight * 1.2
                color: appStyle.header1
                //width: textItem.implicitWidth
                Text {
                    id: textItem
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    // anchors.leftMargin: 100
                    //anchors.rightMargin: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: styleData.value
                    elide: Text.ElideRight
                    color: appStyle.background
                    renderType: Text.NativeRendering
                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.topMargin: 1
                    width: 1
                    color: appStyle.header1
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:39;anchors_height:200;anchors_width:200;anchors_x:308;anchors_y:10}
}
 ##^##*/
