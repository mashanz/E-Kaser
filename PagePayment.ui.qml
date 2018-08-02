import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Page {
    id: pagePayment
    width: 1280
    height: 660

    background: Rectangle {
        color: appStyle.background
    }

    header: Label {
        id: label
        text: qsTr("Split Payment")
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text

        Button {
            id: button
            width: 100
            height: 40
            anchors.top: parent.top
            anchors.topMargin: 6
            anchors.right: parent.right
            anchors.rightMargin: 10
            x: 1172
            onClicked: {
                splitBillPayment.visible = false
            }
            Text {
                text: qsTr("Batalkan")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.left: parent.left
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: appStyle.border
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }
                        GradientStop {
                            position: 1
                            color: control.pressed ? appStyle.inputTxt : appStyle.button1
                        }
                    }
                }
            }
        }
    }

    Rectangle {
        id: rectangle
        height: 2
        color: appStyle.border
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }
}
