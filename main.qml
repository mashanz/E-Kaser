import QtQuick 2.9
import QtQuick.Window 2.0
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Khaseer")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }

        Page3Form {
        }

    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            id: satu
            text: qsTr("Registrasi")
        }

        TabButton {
            text: qsTr("Menu")
        }

        TabButton {
            text: qsTr("Pembayaran")
        }

    }
}
