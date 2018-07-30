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
        color: appStyle.active
    }

    header: Label {
        text: qsTr("Menu")
        font.bold: true
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

    Rectangle {
        id: rectangle1
        width: 152
        height: 50
        color: appStyle.deactive
        radius: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10

        TextInput {
            id: textInput4
            property string placeholderText: "Code"
            Text {
                text: textInput4.placeholderText
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.secondaryBgColor
                visible: !textInput4.text
                font.pixelSize: 18
            }
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: rectangle2
        width: 426
        height: 50
        color: appStyle.deactive
        radius: 10
        anchors.left: rectangle1.right
        anchors.leftMargin: 10
        anchors.top: rectangle.bottom
        anchors.topMargin: 5

        TextInput {
            id: textInput2
            property string placeholderText: "Cari Menu..."
            Text {
                text: textInput2.placeholderText
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.secondaryBgColor
                visible: !textInput2.text
                font.pixelSize: 18
            }
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: rectangle3
        width: 426
        height: 50
        color: appStyle.deactive
        radius: 10
        anchors.left: rectangle2.right
        anchors.leftMargin: 10
        anchors.top: rectangle.bottom
        anchors.topMargin: 5

        TextInput {
            id: textInput3
            property string placeholderText: "Kode Promo"
            Text {
                text: textInput3.placeholderText
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.secondaryBgColor
                visible: !textInput3.text
                font.pixelSize: 18
            }
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    TableView {
        id: tableView
        width: 588
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
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
       }

    TableView {
        id: tableView2
        x: 682
        width: 598
        anchors.top: rectangle2.bottom
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
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
               width: tableView.viewport.width / 5 //- authorColumn.width
           }

           TableViewColumn {
               id: nama
               title: "Menu"
               role: "menu"
               movable: false
               resizable: false
               width: tableView.viewport.width / 5
           }

           TableViewColumn {
               id: catatan
               title: "Catatan"
               role: "catatan"
               movable: false
               resizable: false
               width: tableView.viewport.width / 5
           }

           TableViewColumn {
               id: harga1
               title: "Satuan"
               role: "satuan"
               movable: false
               resizable: false
               width: tableView.viewport.width / 5
           }

           TableViewColumn {
               id: total
               title: "Total"
               role: "total"
               movable: false
               resizable: false
               width: tableView.viewport.width / 5
           }
    }

    RoundButton {
        id: roundButton
        x: 620
        y: 259
        text: ">"
    }

    RoundButton {
        id: roundButton1
        x: 620
        y: 305
        text: "<"
    }

       Button {
           id: button
           y: 15
           height: 40
           text: qsTr("Button")
           anchors.right: parent.right
           anchors.rightMargin: 10
           anchors.left: rectangle3.right
           anchors.leftMargin: 10
           style: ButtonStyle {
                   background: Rectangle {
                       implicitWidth: 100
                       implicitHeight: 25
                       border.width: control.activeFocus ? 2 : 1
                       border.color: appStyle.active
                       radius: 10
                       gradient: Gradient {
                           GradientStop { position: 0 ; color: control.pressed ? appStyle.active : appStyle.deactive }
                           GradientStop { position: 1 ; color: control.pressed ? appStyle.active : appStyle.deactive }
                       }
                   }
               }
       }
}

/*##^## Designer {
    D{i:4;anchors_y:11}D{i:7;anchors_y:0}D{i:18;anchors_height:539;anchors_width:598;anchors_y:70}
}
 ##^##*/
