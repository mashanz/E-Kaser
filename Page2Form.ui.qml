import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 1280
    height: 660

    header: Label {
        text: qsTr("Menu")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }
}
