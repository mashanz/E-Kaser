import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 1280
    height: 660

    background: Rectangle {
        color: appStyle.active
    }

    header: Label {
        text: qsTr("Pembayaran")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

}
