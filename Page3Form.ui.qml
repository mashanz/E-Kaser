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
        anchors.left: parent.left
        anchors.leftMargin: 10
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
        id: rectMeja
        width: 100
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.left: parent.left
        anchors.leftMargin: 200
        anchors.top: parent.top
        anchors.topMargin: -45

        TextInput {
            id: inputMeja
            property string placeholderText: "No Meja.."
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: inputMeja.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !inputMeja.text
                font.pixelSize: 18
            }
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Button {
        id: cari
        anchors.top: parent.top
        anchors.topMargin: -45
        anchors.left: rectMeja.right
        anchors.leftMargin: 10
        Text {
            text: qsTr("Cari")
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

    TableView {
        id: tableView3
        x: 10
        width: 890
        anchors.bottom: button5.top
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 9
        anchors.top: rectangle.bottom
        anchors.topMargin: 64
        currentRow: 0

        frameVisible: false
        sortIndicatorVisible: true

        Layout.minimumWidth: 400
        Layout.minimumHeight: 240
        Layout.preferredWidth: 600
        Layout.preferredHeight: 400

        TableViewColumn {
            id: checked
            title: ""
            role: "checked"
            movable: false
            resizable: false
            width: tableView3.viewport.width * 1 / 20
            delegate: CheckBox {
                anchors.left: parent.left
                anchors.leftMargin: parent.width / 2 - 6
                checked: styleData.value
                enabled: true
            }
        }

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
            width: tableView3.viewport.width * 10 / 20
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
                height: textItem.implicitHeight * 1.2
                color: appStyle.header1

                //width: textItem.implicitWidth
                Text {
                    id: textItem
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
                CheckBox {
                    id: activateAllEvents
                    anchors.top: parent.top
                    anchors.topMargin: 1
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width / 2 - 6
                    checked: true
                    visible: styleData.column === 0
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
                horizontalAlignment: Text.AlignHCenter
            }
        }

        // setting Height
        rowDelegate: Rectangle {
            id: rowDelegate
            color: styleData.alternate ? appStyle.bgCard : appStyle.background
            width: childrenRect.width
            border.color: appStyle.header1
            height: 50
        }

        model: pesananya

        ListModel {
            id: pesananya
            ListElement {
                qty1: "1"
                checked: true
                menu1: "Ayam Bakar Madu"
                catatan1: "Ayamnya jangan dibakar, engga pake madu"
                harga1: "100.000"
                total1: "100.000"
            }
            ListElement {
                qty1: "2"
                checked: true
                menu1: "Esteh Manis"
                catatan1: "yang satu tehnya ga pake es sama ga manis"
                harga1: "100.000"
                total1: "200.000"
            }
            ListElement {
                qty1: "5"
                checked: true
                menu1: "Bubur ayam"
                catatan1: "1 ga pake bubur, 1 ga pake ayam, 2 ga pake bubur ayam, 1 lengkap"
                harga1: "10.000"
                total1: "50.000"
            }
        }
    }

    Label {
        id: labelCash
        x: 1155
        y: 408
        text: qsTr("Rp 500")
        anchors.bottom: labelDebit.top
        anchors.bottomMargin: 0
        font.pixelSize: 14
        anchors.right: tableView4.right
        anchors.rightMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        padding: 10
        color: appStyle.text
    }

    Label {
        id: txtCash
        text: qsTr("Cash")
        anchors.top: labelTotal.bottom
        anchors.topMargin: 0
        anchors.left: tableView4.left
        anchors.leftMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button1
    }

    Label {
        id: labelDebit
        x: 1129
        y: 450
        text: qsTr("Rp 200.000")
        anchors.bottom: labelCredit.top
        anchors.bottomMargin: 0
        font.pixelSize: 14
        anchors.right: tableView4.right
        anchors.rightMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        padding: 10
        color: appStyle.text
    }

    Label {
        id: txtDebit
        text: qsTr("Debit")
        anchors.left: tableView4.left
        anchors.leftMargin: 0
        anchors.top: labelCash.bottom
        anchors.topMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button1
    }

    Label {
        id: labelCredit
        x: 1087
        y: 498
        text: qsTr("Rp 1.000.000")
        anchors.bottom: tableView3.bottom
        anchors.bottomMargin: 0
        font.pixelSize: 14
        anchors.right: tableView4.right
        anchors.rightMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        padding: 10
        color: appStyle.text
    }

    Label {
        id: txtCredit
        text: qsTr("Credit")
        anchors.left: tableView4.left
        anchors.leftMargin: 0
        anchors.top: labelDebit.bottom
        anchors.topMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button1
    }

    Label {
        id: labelTotal
        x: 1128
        y: 371
        text: qsTr("Rp 1.200.500")
        anchors.bottom: labelCash.top
        anchors.bottomMargin: 0
        font.pixelSize: 14
        anchors.right: tableView4.right
        anchors.rightMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        padding: 10
        color: appStyle.button
    }

    Label {
        id: label1
        text: qsTr("Total")
        anchors.left: tableView4.left
        anchors.leftMargin: 0
        anchors.top: labelTotal.top
        anchors.topMargin: 0
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button1
    }

    Label {
        id: textCustomer
        color: "#222222"
        text: qsTr("Ini Budi Dong")
        anchors.top: labelCustomer.bottom
        anchors.topMargin: -20
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.horizontalCenterOffset: -541
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        id: labelCustomer
        text: qsTr("Customer")
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.horizontalCenterOffset: -587
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 0
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
                text: qsTr("Credit")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }
            //            onClicked: {
            //                var component = Qt.createComponent("bayar.qml")
            //                var menu = component.createObject(this)
            //                menu.show()
            //            }
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
                text: qsTr("Debit")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }
            //            onClicked: {
            //                var component = Qt.createComponent("bayar.qml")
            //                var menu = component.createObject(this)
            //                menu.show()
            //            }
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
                text: qsTr("Cash")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.background
                font.pixelSize: 18
            }
            //            onClicked: {
            //                var component = Qt.createComponent("bayar.qml")
            //                var menu = component.createObject(this)
            //                menu.show()
            //            }
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
        z: 3
        anchors.left: rectangle1.left
        anchors.leftMargin: 0
        anchors.top: rectangle1.bottom
        anchors.topMargin: 10
        anchors.bottom: rectangle3.top
        anchors.bottomMargin: 255
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
                horizontalAlignment: Text.AlignHCenter
            }
            height: 40
        }

        // setting Height
        rowDelegate: Rectangle {
            id: rowDelegate2
            color: styleData.alternate ? appStyle.bgCard : appStyle.background
            width: childrenRect.width
            border.color: appStyle.header1
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
                jumlah: "10.000"
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
                metode: "Debit"
                jumlah: "190.000"
            }
        }
    }

    Rectangle {
        id: rectangle3
        y: 558
        height: 41
        color: appStyle.background
        anchors.left: parent.left
        anchors.leftMargin: 937
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        Button {
            id: button4
            height: 40
            anchors.right: parent.right
            anchors.rightMargin: 0

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
            anchors.left: parent.left
            anchors.leftMargin: 0
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
    }
    Button {
        id: button5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: tableView3.right
        anchors.rightMargin: 0
        //            onClicked: {
        //                    var component = Qt.createComponent("SplitBill.qml")
        //                    var splits = component.createObject(this)
        //                    splits.show()
        //            }
        Text {
            text: qsTr("Proses")
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

    Rectangle {
        id: rectangle2
        height: 76
        color: "#ffffff"
        anchors.top: tableView4.bottom
        anchors.topMargin: -10
        anchors.left: tableView4.left
        anchors.leftMargin: 0
        anchors.right: tableView4.right
        anchors.rightMargin: 0
        border.width: 2
        border.color: appStyle.border
        radius: 5
        z: 2
        transformOrigin: Item.Center

        Label {
            id: txtTax
            text: qsTr("Tax")
            z: 5
            anchors.top: rectangle2.top
            anchors.topMargin: 10
            anchors.left: tableView4.left
            anchors.leftMargin: 0
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: Qt.application.font.pixelSize
            padding: 10
            color: appStyle.button1
        }

        Label {
            id: labelTax
            x: 1199
            color: "#c0c0c0"
            text: qsTr("Rp 500")
            anchors.top: txtTaxPPn.top
            anchors.topMargin: 0
            z: 6
            font.pixelSize: 14
            anchors.right: parent.right
            anchors.rightMargin: 0
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            padding: 10
        }

        Label {
            id: txtTaxPPn
            text: qsTr("PPN (10%)")
            z: 4
            anchors.top: txtTax.bottom
            anchors.topMargin: -20
            anchors.left: tableView4.left
            anchors.leftMargin: 0
            font.bold: false
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: Qt.application.font.pixelSize
            padding: 10
            color: appStyle.button1
        }

        Label {
            id: labelTaxPPh
            x: 1199
            color: "#c0c0c0"
            text: qsTr("Rp 500")
            anchors.top: txtTaxPPh.top
            anchors.topMargin: 0
            z: 6
            font.pixelSize: 14
            anchors.right: parent.right
            anchors.rightMargin: 0
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            padding: 10
        }

        Label {
            id: txtTaxPPh
            text: qsTr("PPH (5%)")
            z: 4
            anchors.top: txtTaxPPn.bottom
            anchors.topMargin: -20
            anchors.left: tableView4.left
            anchors.leftMargin: 0
            font.bold: false
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: Qt.application.font.pixelSize
            padding: 10
            color: appStyle.button1
        }

        Rectangle {
            id: rectangle4
            height: 1
            color: appStyle.border
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            border.width: 2
            border.color: appStyle.border
            z: 7
        }
    }

    Rectangle {
        id: textVoucher
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.left: tableView4.left
        anchors.leftMargin: 0
        anchors.right: submitVoucher.left
        anchors.rightMargin: 10
        anchors.top: parent.top
        anchors.topMargin: -45

        TextInput {
            id: inputVoucher
            property string placeholderText: "Voucher"
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: inputVoucher.placeholderText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.hint
                visible: !inputVoucher.text
                font.pixelSize: 18
            }
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Button {
        id: submitVoucher
        anchors.top: parent.top
        anchors.topMargin: -45
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
        anchors.right: parent.right
        anchors.rightMargin: 10
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
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
