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
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.right: tableView.right
        anchors.rightMargin: 0
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
        width: 0
        height: 40
        color: appStyle.inputTxt
        border.color: appStyle.border
        border.width: 2
        radius: 10
        anchors.left: tableView2.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 200
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
        anchors.right: button1.left
        anchors.rightMargin: 10
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
        Layout.minimumHeight: 300
        Layout.preferredWidth: 600
        Layout.preferredHeight: 400

        TableViewColumn {
            id: code
            title: "Code"
            role: "code"
            movable: false
            resizable: false
            width: tableView.viewport.width * 1 / 9
        }

        TableViewColumn {
            id: menu
            title: "Menu"
            role: "menu"
            movable: false
            resizable: false
            width: (tableView.viewport.width * 7 / 9) - 20
        }

        TableViewColumn {
            id: available
            title: "Available"
            role: "available"
            movable: false
            resizable: false
            width: tableView.viewport.width * 1 / 9
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
            }
        }

        itemDelegate: Item {
            Text {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: appStyle.text
                elide: styleData.elideMode
                text: styleData.value
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
                code: "111"
                menu: "Ayam Bakar Madu"
                available: "100"
            }
            ListElement {
                code: "223"
                menu: "Ayam Bakar Jengkol"
                available: "100"
            }
            ListElement {
                code: "341"
                menu: "Ayam Rebus"
                available: "100"
            }
            ListElement {
                code: "131"
                menu: "Ayam Darad Merapi"
                available: "100"
            }
            ListElement {
                code: "123"
                menu: "Ayam Tumis"
                available: "100"
            }
            ListElement {
                code: "146"
                menu: "Bubur Ayam"
                available: "10.000"
            }
            ListElement {
                code: "127"
                menu: "Nasi Goreng"
                available: "5.000"
            }
            ListElement {
                code: "149"
                menu: "Es Teh"
                available: "7.000"
            }
            ListElement {
                code: "155"
                menu: "Manisan"
                available: "6.100"
            }
            ListElement {
                code: "175"
                menu: "Ceker Ayam"
                available: "8.100"
            }
            ListElement {
                code: "195"
                menu: "Ati Ayam"
                available: "9.100"
            }
            ListElement {
                code: "245"
                menu: "Gorengan"
                available: "10.100"
            }
            ListElement {
                code: "345"
                menu: "Timbel Ayam"
                available: "14.100"
            }
            ListElement {
                code: "445"
                menu: "Nasi Ayam Bakar"
                available: "16.100"
            }
            ListElement {
                code: "545"
                menu: "Kopi Ayam"
                available: "8.100"
            }
            ListElement {
                code: "645"
                menu: "Kue Ayam Bakar"
                available: "20.100"
            }
            ListElement {
                code: "745"
                menu: "Bubur Ayam Bakar"
                available: "22.100"
            }
            ListElement {
                code: "845"
                menu: "Bakso Ayam"
                available: "45.100"
            }
            ListElement {
                code: "945"
                menu: "bakso Ayam Bakar"
                available: "66.100"
            }
            ListElement {
                code: "611"
                menu: "Mi Ayam Bakar Madu"
                available: "99.100"
            }
            ListElement {
                code: "523"
                menu: "Mi Ayam Bakar Jengkol"
                available: "12.100"
            }
            ListElement {
                code: "841"
                menu: "Mi Ayam Rebus"
                available: "121.100"
            }
            ListElement {
                code: "231"
                menu: "Kerupuk Ayam Darad Merapi"
                available: "255.000"
            }
            ListElement {
                code: "423"
                menu: "Rendang Ayam Tumis"
                available: "781.000"
            }
        }
    }

    TableView {
        id: tableView2
        anchors.left: button1.right
        anchors.leftMargin: 10
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
            width: tableView2.viewport.width * 1 / 20
        }

        TableViewColumn {
            id: nama
            title: "Menu"
            role: "menu"
            movable: false
            resizable: false
            width: tableView2.viewport.width * 4 / 20
        }

        TableViewColumn {
            id: catatan
            title: "Catatan"
            role: "catatan"
            movable: false
            resizable: false
            width: tableView2.viewport.width * 7 / 20
        }

        TableViewColumn {
            id: harga1
            title: "Harga Satuan"
            role: "satuan"
            movable: false
            resizable: false
            width: tableView2.viewport.width * 4 / 20
        }

        TableViewColumn {
            id: total
            title: "Sub Total"
            role: "subtotal"
            movable: false
            resizable: false
            width: tableView2.viewport.width * 4 / 20
        }

        itemDelegate: Item {
            Text {
                anchors {
                    left: parent.left
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                }
                id: text1
                text: styleData.value
                //text: "orem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in mollis purus\n\n" +
                //"Etiam sagittis fringilla quam, eget accumsan libero pulvinar ac."
                wrapMode: Text.Wrap
                horizontalAlignment:Text.AlignHCenter
            }
//            Text {
//                anchors.verticalCenter: parent.verticalCenter
//                anchors.horizontalCenter: parent.horizontalCenter
//                color: appStyle.text
//                //elide: styleData.elideMode
//                wrapMode: Text.WordWrap
//                text: styleData.value
//            }
            height: 40
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem2.implicitHeight * 1.2
                color: appStyle.header1
                width: textItem2.implicitWidth
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

        rowDelegate: Rectangle {
            property int sizeOpen: 50
			property int sizeClosed: 50

			id: rowDelegate
			color: styleData.alternate ? appStyle.bgCard : appStyle.background
			height: getSize()

			function getSize() {
				if(!tableView2.selection.contains(styleData.row)) {
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
						tableView2.selection.deselect(styleData.row);
						doClose.start()
					} else {
						tableView2.selection.clear();
						tableView2.selection.select(styleData.row);
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

        model: menunya

        ListModel {
            id: menunya
            ListElement {
                qty: "1"
                menu: "Ayam Bakar Madu"
                catatan: "Ayamnya jangan dibakar, engga pake madu"
                satuan: "100.000"
                subtotal: "100.000"
            }
            ListElement {
                qty: "2"
                menu: "Esteh Manis"
                catatan: "yang satu tehnya ga pake es sama ga manis"
                satuan: "100.000"
                subtotal: "200.000"
            }
            ListElement {
                qty: "5"
                menu: "Bubur ayam"
                catatan: "1 ga pake bubur, 1 ga pake ayam, 2 ga pake bubur ayam, 1 lengkap"
                satuan: "10.000"
                subtotal: "50.000"
            }
        }
    }

    Button {
        id: button
        width: 100
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
                    GradientStop {
                        position: 0
                        color: control.pressed ? appStyle.background : appStyle.button
                    }
                    GradientStop {
                        position: 1
                        color: control.pressed ? appStyle.background : appStyle.button
                    }
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
        anchors.horizontalCenter: parent.horizontalCenter
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
                    GradientStop {
                        position: 0
                        color: control.pressed ? appStyle.background : appStyle.button
                    }
                    GradientStop {
                        position: 1
                        color: control.pressed ? appStyle.background : appStyle.button
                    }
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
        anchors.horizontalCenter: parent.horizontalCenter
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
                    GradientStop {
                        position: 0
                        color: control.pressed ? appStyle.background : appStyle.button
                    }
                    GradientStop {
                        position: 1
                        color: control.pressed ? appStyle.background : appStyle.button
                    }
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:4;anchors_y:11}D{i:7;anchors_width:438;anchors_y:0}D{i:10;anchors_width:376}D{i:18;anchors_height:539;anchors_width:598;anchors_y:70}
D{i:13;anchors_width:600}D{i:25;anchors_y:15}D{i:21;anchors_width:600}
}
 ##^##*/
