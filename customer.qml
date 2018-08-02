import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

import QtQuick.Controls.Styles 1.2

Window {
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Daftar Pesanan")

    property variant appStyle: Style {
        id: style
    }

    Rectangle {
        id: rectangle
            color: appStyle.background
            anchors.fill: parent
    }

    Label {
        id : label1
        text: qsTr("Total")
        anchors.right: parent.right
        anchors.rightMargin: 50
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button2
    }

    Label {
        id : labelTotal
        text: qsTr("Rp 1.200.500")
        anchors.top: label1.bottom
        anchors.topMargin: -25
        anchors.right: parent.right
        anchors.rightMargin: 10
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Label {
        id : labelMeja
        text: qsTr("Meja")
        anchors.left: parent.left
        anchors.leftMargin: 50
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button2
    }

    Label {
        id : labelMeja1
        text: qsTr("5")
        anchors.top: labelMeja.bottom
        anchors.topMargin: -25
        anchors.horizontalCenter: labelMeja.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    Label {
        id : labelCustomer
        text: qsTr("Customer")
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
        color: appStyle.button2
    }

    Label {
        id : labelCustomer1
        text: qsTr("Saya Budi Dong")
        anchors.top: labelCustomer.bottom
        anchors.topMargin: -25
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
        color: appStyle.text
    }

    TableView {
        id: tableView
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: labelCustomer1.bottom
        anchors.topMargin: 10
        currentRow: 0
        frameVisible: false
        sortIndicatorVisible: true
        Layout.minimumWidth: 400
        Layout.preferredWidth: 600
        Layout.preferredHeight: 400
        Layout.minimumHeight: 240

        TableViewColumn {
            id: qty
            title: "Qty"
            role: "qty"
            movable: false
            resizable: false
            width: tableView.viewport.width * 1 / 20
        }

        TableViewColumn {
            id: menu
            title: "Menu"
            role: "menu"
            movable: false
            resizable: false
            width: tableView.viewport.width * 4 / 20
        }

        TableViewColumn {
            id: catatan
            title: "Catatan"
            role: "catatan"
            movable: false
            resizable: false
            width: tableView.viewport.width * 11 / 20
        }

        TableViewColumn {
            id: satuan
            title: "Harga Satuan"
            role: "price1"
            movable: false
            resizable: false
            width: tableView.viewport.width * 2 / 20
        }

        TableViewColumn {
            id: total
            title: "Sub Total"
            role: "subtotal"
            movable: false
            resizable: false
            width: tableView.viewport.width * 2 / 20
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem.implicitHeight * 1.2
                color: appStyle.header1
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

        rowDelegate: Rectangle {
            property int sizeOpen: 50
			property int sizeClosed: 50

			id: rowDelegate
			color: styleData.alternate ? appStyle.bgCard : appStyle.background
			height: getSize()

			function getSize() {
				if(!tableView.selection.contains(styleData.row)) {
					doClose.start();
					return sizeClosed;
				}
				return sizeOpen;
			}

			MouseArea {
				height: sizeClosed
				propagateComposedEvents: true
				preventStealing: true
				acceptedButtons: Qt.LeftButton | Qt.RightButton

				onClicked: {
					if(rowDelegate.sizeOpen == rowDelegate.height) {
						tableView.selection.deselect(styleData.row);
						doClose.start()
					} else {
						tableView.selection.clear();
						tableView.selection.select(styleData.row);
						doOpen.start();
					}
				}
			}

			ParallelAnimation {
				id: doOpen
				running: false
				NumberAnimation {
				    target: rowDelegate;
				    easing.type: Easing.OutSine;
				    property: "height";
				    to: sizeOpen;
				    duration: 100
				}
			}

			ParallelAnimation {
				id: doClose
				running: false
				NumberAnimation {
				    target: rowDelegate;
				    easing.type: Easing.OutSine;
				    property: "height";
				    to: sizeClosed;
				    duration: 100;
				}
			}
		}

        model: pesanan
        ListModel {
            id: pesanan
            ListElement {
                qty: "1"
                menu: "Ayam Bakar Madu"
                catatan: "Ayamnya jangan dibakar, engga pake madu"
                price1: "100.000"
                subtotal: "100.000"
            }
            ListElement {
                qty: "2"
                menu: "Esteh Manis"
                catatan: "yang satu tehnya ga pake es sama ga manis"
                price1: "100.000"
                subtotal: "200.000"
            }
            ListElement {
                qty: "5"
                menu: "Bubur ayam"
                catatan: "1 ga pake bubur, 1 ga pake ayam, 2 ga pake bubur ayam, 1 lengkap"
                price1: "10.000"
                subtotal: "50.000"
            }
        }
    }
}

/*##^## Designer {
    D{i:39;anchors_height:200;anchors_width:200;anchors_x:308;anchors_y:10}
}
 ##^##*/
