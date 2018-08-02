import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    id: root
    width: 200; height: 200

    Button {
        anchors.centerIn: parent
        text: qsTr("Click me")

        onClicked: {
            var component = Qt.createComponent("Child.qml")
            var window    = component.createObject(root)
            window.show()
        }
    }
}
