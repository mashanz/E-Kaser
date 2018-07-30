import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Window {
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Daftar Pesanan")

    Label {
        id : label
        text: qsTr("Daftar Pesanan")
        anchors.top: parent.top
        anchors.topMargin: 10
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.primaryBgColor
    }

    Label {
        id : label1
        text: qsTr("Total:")
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: labelTotal.left
        anchors.rightMargin: 10
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.primaryBgColor
    }

    Label {
        id : labelTotal
        text: qsTr("Rp 1.200.500")
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.primaryBgColor
    }

    Label {
        id : labelMeja
        text: qsTr("Meja")
        anchors.left: label.right
        anchors.leftMargin: 30
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.primaryBgColor
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
        color: appStyle.primaryBgColor
    }

    Label {
        id : labelCustomer
        text: qsTr("Customer")
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.primaryBgColor
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
        color: appStyle.primaryBgColor
    }

    TableView {
        id: tableView
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: label.bottom
        anchors.topMargin: 10
        currentRow: 0

        frameVisible: false
           sortIndicatorVisible: true
           Layout.minimumWidth: 400
           Layout.minimumHeight: 240
           Layout.preferredWidth: 600
           Layout.preferredHeight: 400

           TableViewColumn {
               id: qty
               title: "Qty"
               role: "qty"
               movable: false
               resizable: false
               width: tableView.viewport.width / 4
           }

           TableViewColumn {
               id: menu
               title: "Menu"
               role: "menu"
               movable: false
               resizable: false
               width: tableView.viewport.width / 4
           }

           TableViewColumn {
               id: price1
               title: "Harga Satuan"
               role: "price1"
               movable: false
               resizable: false
               width: tableView.viewport.width / 4
           }

           TableViewColumn {
               id: total
               title: "Sub Total"
               role: "subtotal"
               movable: false
               resizable: false
               width: tableView.viewport.width / 4
           }
       }
}
