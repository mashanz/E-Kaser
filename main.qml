import QtQuick 2.9
import QtQuick.Window 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Khaseer")

    property variant appStyle: Style {
        id: style
    }

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
        background: Rectangle {
                color: appStyle.active
        }
        TabButton {
            text: qsTr("Registrasi")
            background: Rectangle {
                color: tabBar.currentIndex == 0 ? appStyle.active : appStyle.deactive
                radius: 0
            }
        }

        TabButton {
            text: qsTr("Menu")
            background: Rectangle {
                color: tabBar.currentIndex == 1 ? appStyle.active : appStyle.deactive
                radius: 0
            }
        }

        TabButton {
            text: qsTr("Pembayaran")
            background: Rectangle {
                color: tabBar.currentIndex == 2 ? appStyle.active : appStyle.deactive
                radius: 0
            }

        }
    }
}
