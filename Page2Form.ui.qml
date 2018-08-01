import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

Page {
    id: page
    width: 1280
    height: 660
    font.bold: false

    background: Rectangle {
        color: appStyle.background
    }

    header: Label {
        text: qsTr("Menu")
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
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

    Rectangle {
        id: rectangle1
        width: 152
        height: 40
        color: appStyle.inputTxt
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: rectangle.bottom
        anchors.topMargin: 5
        border.color: appStyle.border
        border.width: 2
        radius: 10

        TextInput {
            id: textInput4
            property string placeholderText: "Code"
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: textInput4.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !textInput4.text
                font.pixelSize: 18
            }
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: rectangle2
        width: 438
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.left: rectangle1.right
        anchors.leftMargin: 10
        anchors.top: rectangle.bottom
        anchors.topMargin: 5

        TextInput {
            id: textInput2
            property string placeholderText: "Cari Menu..."
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: textInput2.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !textInput2.text
                font.pixelSize: 18
            }
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: rectangle3
        width: 376
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.left: rectangle2.right
        anchors.leftMargin: 60
        anchors.top: rectangle.bottom
        anchors.topMargin: 5

        TextInput {
            id: textInput3
            property string placeholderText: "Kode Promo"
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: textInput3.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !textInput3.text
                font.pixelSize: 18
            }
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    TableView {
        id: tableView
        width: 600
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.top: rectangle1.bottom
        anchors.topMargin: 10
        currentRow: 0

        frameVisible: false
        sortIndicatorVisible: true
        Layout.minimumWidth: 400
        Layout.minimumHeight: 240
        Layout.preferredWidth: 600
        Layout.preferredHeight: 400

        TableViewColumn {
            id: code
            title: "Code"
            role: "code"
            movable: false
            resizable: false
            width: tableView.viewport.width / 3 //- authorColumn.width
        }

        TableViewColumn {
            id: menu
            title: "Menu"
            role: "menu"
            movable: false
            resizable: false
            width: tableView.viewport.width / 3
        }

        TableViewColumn {
            id: available
            title: "Available"
            role: "available"
            movable: false
            resizable: false
            width: tableView.viewport.width / 3
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem.implicitHeight * 1.2
                color: appStyle.header1
                //width: textItem.implicitWidth
                Text {
                    id: textItem
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    // anchors.leftMargin: 100
                    //anchors.rightMargin: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: styleData.value
                    elide: Text.ElideRight
                    color: appStyle.background
                    renderType: Text.NativeRendering
                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.topMargin: 1
                    width: 1
                    color: appStyle.header1
                }
            }
        }

        // model : [
        //     {
        //         qty: "2",
        //         nama: "Ayam Bakar",
        //         catatan: "Jangan dibakar",
        //         harga1: "10.000",
        //         total: "20.000"
        //     },
        //     {
        //         qty: "2",
        //         nama: "Ayam Rebus",
        //         catatan: "Jangan dibakar",
        //         harga1: "10.000",
        //         total: "20.000"
        //     },
        //     {
        //         qty: "2",
        //         nama: "Ayam Goreng",
        //         catatan: "Jangan dibakar",
        //         harga1: "10.000",
        //         total: "20.000"
        //     }
        // ]
    }

    TableView {
        id: tableView2
        width: 600
        anchors.top: rectangle2.bottom
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
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
            width: tableView2.viewport.width / 5 //- authorColumn.width
        }

        TableViewColumn {
            id: nama
            title: "Menu"
            role: "menu"
            movable: false
            resizable: false
            width: tableView2.viewport.width / 5
        }

        TableViewColumn {
            id: catatan
            title: "Catatan"
            role: "catatan"
            movable: false
            resizable: false
            width: tableView2.viewport.width / 5
        }

        TableViewColumn {
            id: harga1
            title: "Harga Satuan"
            role: "satuan"
            movable: false
            resizable: false
            width: tableView2.viewport.width / 5
        }

        TableViewColumn {
            id: total
            title: "Sub Total"
            role: "subtotal"
            movable: false
            resizable: false
            width: tableView2.viewport.width / 5
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem2.implicitHeight * 1.2
                color: appStyle.header1
                //width: textItem.implicitWidth
                Text {
                    id: textItem2
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    // anchors.leftMargin: 100
                    //anchors.rightMargin: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: styleData.value
                    elide: Text.ElideRight
                    color: appStyle.background
                    renderType: Text.NativeRendering
                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.topMargin: 1
                    width: 1
                    color: appStyle.header1
                }
            }
        }
    }

       Button {
           id: button
           height: 40
           Text {
                text: qsTr("Submit")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
           }
           anchors.top: rectangle.bottom
           anchors.topMargin: 5
           anchors.right: parent.right
           anchors.rightMargin: 10
           anchors.left: rectangle3.right
           anchors.leftMargin: 10
           style: ButtonStyle {
                   background: Rectangle {
                       implicitWidth: 100
                       implicitHeight: 25
                       border.width: control.activeFocus ? 2 : 1
                       border.color: appStyle.border
                       radius: 10
                       gradient: Gradient {
                           GradientStop { position: 0 ; color: control.pressed ? appStyle.background : appStyle.button }
                           GradientStop { position: 1 ; color: control.pressed ? appStyle.background : appStyle.button }
                       }
                   }
           }
       }

       Button {
           id: button1
           x: 619
           y: 285
           width: 42
           height: 40
           Text {
                text: qsTr(">")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
           }
           style: ButtonStyle {
                   background: Rectangle {
                       border.width: control.activeFocus ? 2 : 1
                       border.color: appStyle.border
                       radius: 255
                       gradient: Gradient {
                           GradientStop { position: 0 ; color: control.pressed ? appStyle.background : appStyle.button }
                           GradientStop { position: 1 ; color: control.pressed ? appStyle.background : appStyle.button }
                       }
                   }
           }
       }

       Button {
           id: button2
           x: 619
           y: 345
           width: 42
           height: 40
           Text {
                text: qsTr("<")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
           }
           style: ButtonStyle {
                   background: Rectangle {
                       border.width: control.activeFocus ? 2 : 1
                       border.color: appStyle.border
                       radius: 255
                       gradient: Gradient {
                           GradientStop { position: 0 ; color: control.pressed ? appStyle.background : appStyle.button }
                           GradientStop { position: 1 ; color: control.pressed ? appStyle.background : appStyle.button }
                       }
                   }
           }
       }
}

/*##^## Designer {
    D{i:4;anchors_y:11}D{i:7;anchors_y:0}D{i:18;anchors_height:539;anchors_width:598;anchors_y:70}
D{i:25;anchors_y:15}
}
 ##^##*/
