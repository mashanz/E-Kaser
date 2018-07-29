import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 1280
    height: 660
    font.bold: false

    background: Rectangle {
        color: appStyle.active
    }

    header: Label {
        text: qsTr("Menu")
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.primaryBgColor
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
}
