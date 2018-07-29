import QtQuick 2.9
import QtQuick.Window 2.0
import QtQuick.Controls 2.2

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

        TabButton {
            id: satu
            text: qsTr("Registrasi")
            background: Rectangle {
                color: {
                    satu.activeFocus ? appStyle.active : appStyle.deactive
                }
            }
        }

        TabButton {
            id: dua
            text: qsTr("Menu")
            background: Rectangle {
                color: {
                    dua.activeFocus ? appStyle.active : appStyle.deactive
                }
            }
        }

        TabButton {
            id: tiga
            text: qsTr("Pembayaran")
            background: Rectangle {
                color: {
                    tiga.activeFocus ? appStyle.active : appStyle.deactive
                }
            }
        }

    }
}
