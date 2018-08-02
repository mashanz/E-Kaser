import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

import QtQuick 2.2
import QtQuick.Window 2.2

Page {
    id: page3
    width: 1280
    height: 660

    background: Rectangle {
        color: appStyle.background
    }

    header: Label {
        text: qsTr("Pembayaran")
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

    TableView {
        id: tableView3
        width: 893
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: rectangle.bottom
        anchors.topMargin: 10
        currentRow: 0

        frameVisible: false
        sortIndicatorVisible: true

        Layout.minimumWidth: 400
        Layout.minimumHeight: 240
        Layout.preferredWidth: 600
        Layout.preferredHeight: 400

        TableViewColumn {
            id: qty1
            title: "Qty"
            role: "qty1"
            movable: false
            resizable: false
            width: tableView3.viewport.width * 1 / 20
        }

        TableViewColumn {
            id: menu1
            title: "Menu"
            role: "menu1"
            movable: false
            resizable: false
            width: tableView3.viewport.width * 4 / 20
        }

        TableViewColumn {
            id: catatan1
            title: "Catatan"
            role: "catatan1"
            movable: false
            resizable: false
            width: tableView3.viewport.width * 11 / 20
        }

        TableViewColumn {
            id: harga1
            title: "Satuan"
            role: "harga1"
            movable: false
            resizable: false
            width: tableView3.viewport.width * 2 / 20
        }

        TableViewColumn {
            id: total1
            title: "Total"
            role: "total1"
            movable: false
            resizable: false
            width: tableView3.viewport.width * 2 / 20
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem2.implicitHeight * 1.2
                color: appStyle.header1
                Text {
                    id: textItem2
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
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

        itemDelegate: Rectangle {
            border.color: appStyle.header1
            color: "transparent"
            Text {
                id: text1
                anchors {
                    left: parent.left
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                }
                text: styleData.value
                wrapMode: Text.Wrap
                color: appStyle.text
                renderType: Text.NativeRendering
                horizontalAlignment:Text.AlignHCenter
            }
            height: 40
        }

        model: pesananya

        ListModel {
            id: pesananya
            ListElement {
                qty1: "1"
                menu1: "Ayam Bakar Madu"
                catatan1: "Ayamnya jangan dibakar, engga pake madu"
                harga1: "100.000"
                total1: "100.000"
            }
            ListElement {
                qty1: "2"
                menu1: "Esteh Manis"
                catatan1: "yang satu tehnya ga pake es sama ga manis"
                harga1: "100.000"
                total1: "200.000"
            }
            ListElement {
                qty1: "5"
                menu1: "Bubur ayam"
                catatan1: "1 ga pake bubur, 1 ga pake ayam, 2 ga pake bubur ayam, 1 lengkap"
                harga1: "10.000"
                total1: "50.000"
            }
        }
    }

    Label {
        id: labelTotal
        x: 1088
        y: 26
        text: qsTr("Rp 1.200.500")
        anchors.top: label1.bottom
        anchors.topMargin: -25
        anchors.right: parent.right
        anchors.rightMargin: 9
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Label {
        id: label1
        x: 1176
        text: qsTr("Total")
        anchors.top: parent.top
        anchors.topMargin: -55
        anchors.right: parent.right
        anchors.rightMargin: 52
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button1
    }

    Label {
        id: textCustomer
        x: 1088
        y: 26
        text: qsTr("Ini Budi Dong")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: label1.bottom
        anchors.topMargin: -25
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Label {
        id: labelCustomer
        x: 1176
        text: qsTr("Customer")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: -55
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button1
    }

    Label {
        id: textMeja
        x: 1088
        y: 26
        text: qsTr("5")
        anchors.horizontalCenter: labelMeja.horizontalCenter
        anchors.top: label1.bottom
        anchors.topMargin: -25
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Label {
        id: labelMeja
        text: qsTr("Meja")
        anchors.left: parent.left
        anchors.leftMargin: 250
        anchors.top: parent.top
        anchors.topMargin: -55
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button1
    }

    Rectangle {
        id: rectangle1
        y: 15
        height: 41
        color: appStyle.background
        anchors.left: tableView3.right
        anchors.leftMargin: 38
        anchors.right: parent.right
        anchors.rightMargin: 10
        Button {
            id: button2
            Text {
                text: qsTr("Voucher")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }
            anchors.left: button1.right
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 0
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    border.width: control.activeFocus ? 2 : 1
                    border.color: appStyle.border
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.background : appStyle.button
                        }
                    }
                }
            }
        }

        Button {
            id: button1
            x: 50
            Text {
                text: qsTr("Kredit")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 0
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    border.width: control.activeFocus ? 2 : 1
                    border.color: appStyle.border
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.background : appStyle.button
                        }
                    }
                }
            }
        }

        Button {
            id: button
            x: 8
            Text {
                text: qsTr("Debit")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }
            anchors.right: button1.left
            anchors.rightMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 0
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    border.width: control.activeFocus ? 2 : 1
                    border.color: appStyle.border
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.background : appStyle.button
                        }
                    }
                }
            }
        }
    }

    TableView {
        id: tableView4
        height: 524
        anchors.left: rectangle1.left
        anchors.leftMargin: 0
        anchors.top: rectangle1.bottom
        anchors.topMargin: 10
        anchors.bottom: rectangle3.top
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
            id: no
            title: "No"
            role: "no"
            movable: false
            resizable: false
            width: tableView4.viewport.width * 1 / 9
        }

        TableViewColumn {
            id: metode
            title: "Metode"
            role: "metode"
            movable: false
            resizable: false
            width: tableView4.viewport.width * 5 / 9
        }

        TableViewColumn {
            id: jumlah
            title: "Jumlah bayar"
            role: "jumlah"
            movable: false
            resizable: false
            width: tableView4.viewport.width * 3 / 9
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem3.implicitHeight * 1.2
                color: appStyle.header1
                Text {
                    id: textItem3
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
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

        itemDelegate: Rectangle {
            border.color: appStyle.header1
            color: "transparent"
            Text {
                id: text1q
                anchors {
                    left: parent.left
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                }
                text: styleData.value
                wrapMode: Text.Wrap
                color: appStyle.text
                renderType: Text.NativeRendering
                horizontalAlignment:Text.AlignHCenter
            }
            height: 40
        }

//        itemDelegate: Item {
//            Text {
//                anchors.verticalCenter: parent.verticalCenter
//                anchors.horizontalCenter: parent.horizontalCenter
//                color: appStyle.text
//                elide: styleData.elideMode
//                text: styleData.value
//            }
//            height: 40
//        }


        //        rowDelegate: Rectangle {
        //            property int sizeOpen: 50
        //			property int sizeClosed: 30

        //			id: rowDelegate
        //			color: styleData.alternate ? appStyle.bgCard : appStyle.background
        //			height: getSize()

        //			function getSize() {
        //				if(!tableView4.selection.contains(styleData.row)) {
        //					doClose.start();
        //					return sizeClosed;
        //				}
        //				return sizeOpen;
        //			}

        //			MouseArea {
        //				height: sizeClosed
        //				propagateComposedEvents: true
        //				preventStealing: true
        //				acceptedButtons: Qt.LeftButton | Qt.RightButton

        //				onClicked: {
        //					if(rowDelegate.sizeOpen == rowDelegate.height) {
        //						tableView4.selection.deselect(styleData.row);
        //						doClose.start()
        //					} else {
        //						tableView4.selection.clear();
        //						tableView4.selection.select(styleData.row);
        //						doOpen.start();
        //					}
        //				}
        //			}

        //			ParallelAnimation {
        //				id: doOpen
        //				running: false
        //				NumberAnimation {
        //				    target: rowDelegate;
        //				    easing.type: Easing.OutSine;
        //				    property: "height";
        //				    to: sizeOpen;
        //				    duration: 100
        //				}
        //			}

        //			ParallelAnimation {
        //				id: doClose
        //				running: false
        //				NumberAnimation {
        //				    target: rowDelegate;
        //				    easing.type: Easing.OutSine;
        //				    property: "height";
        //				    to: sizeClosed;
        //				    duration: 100;
        //				}
        //			}
        //		}
        model: pembayaran

        ListModel {
            id: pembayaran
            ListElement {
                no: "1"
                metode: "Voucher GoPay"
                jumlah: "5.000"
            }
            ListElement {
                no: "2"
                metode: "Kredit"
                jumlah: "1.000.000"
            }
            ListElement {
                no: "3"
                metode: "Cash"
                jumlah: "500"
            }
            ListElement {
                no: "4"
                metode: "Promo"
                jumlah: "100"
            }
        }
    }

    Rectangle {
        id: rectangle3
        y: 558
        height: 41
        color: appStyle.background
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: tableView3.right
        anchors.leftMargin: 39
        anchors.right: parent.right
        anchors.rightMargin: 10
        Button {
            id: button4
            anchors.right: parent.right
            anchors.rightMargin: 10
            
            Text {
                text: qsTr("Bayar")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }
            anchors.left: button5.right
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 0
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    border.width: control.activeFocus ? 2 : 1
                    border.color: appStyle.border
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.background : appStyle.button2
                        }
                    }
                }
            }
        }

        Button {
            id: button5
            anchors.left: parent.left
            anchors.leftMargin: 10
            onClicked: {
                    var component = Qt.createComponent("SplitBill.qml")
                    var splits = component.createObject(this)
                    splits.show()
            }
            Text {
                text: qsTr("Split Bill / Payment")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }

            anchors.top: parent.top
            anchors.topMargin: 0
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 40
                    border.width: control.activeFocus ? 2 : 1
                    border.color: appStyle.border
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? appStyle.background : appStyle.button1
                        }
                    }
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:18;anchors_y:"-36"}D{i:27;anchors_height:528;anchors_y:71}D{i:16;anchors_width:451;anchors_x:820}
D{i:38;anchors_width:450;anchors_x:830}
}
 ##^##*/
