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
    title: qsTr("Split Bill")

    property variant appStyle: Style {
        id: style
    }
}

/*##^## Designer {
    D{i:31;anchors_x:215;anchors_y:232}D{i:32;anchors_x:0;anchors_y:0}D{i:29;anchors_x:158;anchors_y:9}
}
 ##^##*/
