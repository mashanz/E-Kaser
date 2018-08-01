import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4
Page {
    id: page
    width: 1280
    height: 660

    background: Rectangle {
        color: appStyle.active
    }

    header: Label {
        text: qsTr("Pembayaran")
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

    TableView {
        id: tableView3
        width: 771
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
            role: "qty"
            movable: false
            resizable: false
            width: tableView3.viewport.width / 5 //- authorColumn.width
        }

        TableViewColumn {
            id: nama1
            title: "Menu"
            role: "menu"
            movable: false
            resizable: false
            width: tableView3.viewport.width / 5
        }

        TableViewColumn {
            id: catatan1
            title: "Catatan"
            role: "catatan"
            movable: false
            resizable: false
            width: tableView3.viewport.width / 5
        }

        TableViewColumn {
            id: harga11
            title: "Satuan"
            role: "satuan"
            movable: false
            resizable: false
            width: tableView3.viewport.width / 5
        }

        TableViewColumn {
            id: total1
            title: "Total"
            role: "total"
            movable: false
            resizable: false
            width: tableView3.viewport.width / 5
        }

        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem2.implicitHeight * 1.2
                color: appStyle.capsColor
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
                    color: appStyle.active
                    renderType: Text.NativeRendering
                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.topMargin: 1
                    width: 1
                    color: "#ccc"
                }
            }
        }
    }

    Label {
        id : labelTotal
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
        color: appStyle.primaryBgColor
    }

    Label {
        id : label1
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
        color: appStyle.primaryBgColor
    }

    Rectangle {
        id: rectangle1
        x: 820
        y: 15
        width: 451
        height: 41

        color : appStyle.active

        Button {
            id: button2
            Text {
                text: qsTr("Voucher")
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: appStyle.deactive
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
                        border.color: appStyle.active
                        radius: 10
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control.pressed ? appStyle.deactive : appStyle.capsColor }
                            GradientStop { position: 1 ; color: control.pressed ? appStyle.deactive : appStyle.capsColor }
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
                color: appStyle.deactive
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
                        border.color: appStyle.active
                        radius: 10
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control.pressed ? appStyle.deactive : appStyle.capsColor }
                            GradientStop { position: 1 ; color: control.pressed ? appStyle.deactive : appStyle.capsColor }
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
                color: appStyle.deactive
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
                        border.color: appStyle.active
                        radius: 10
                        gradient: Gradient {
                            GradientStop { position: 0 ; color: control.pressed ? appStyle.deactive : appStyle.capsColor }
                            GradientStop { position: 1 ; color: control.pressed ? appStyle.deactive : appStyle.capsColor }
                        }
                    }
            }
        }
    }


    TableView {
        id: tableView4
        x: 830
        width: 450
        height: 524
        anchors.top: rectangle1.bottom
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
            id: no
            title: "No"
            role: "no"
            movable: false
            resizable: false
            width: tableView4.viewport.width / 3 //- authorColumn.width
        }

        TableViewColumn {
            id: metode
            title: "Metode"
            role: "metode"
            movable: false
            resizable: false
            width: tableView4.viewport.width / 3
        }

        TableViewColumn {
            id: jumlah
            title: "Jumlah bayar"
            role: "jml_bayar"
            movable: false
            resizable: false
            width: tableView4.viewport.width / 3
        }


        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: textItem3.implicitHeight * 1.2
                color: appStyle.capsColor
                //width: textItem.implicitWidth
                Text {
                    id: textItem3
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    // anchors.leftMargin: 100
                    //anchors.rightMargin: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: styleData.value
                    elide: Text.ElideRight
                    color: appStyle.active
                    renderType: Text.NativeRendering
                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.topMargin: 1
                    width: 1
                    color: "#ccc"
                }
            }
        }
    }


    //    TableView {
    //        id: tableView
    //        anchors.top: rectangle.bottom
    //        anchors.topMargin: 10
    //        currentRow: 0

    //        frameVisible: false
    //           sortIndicatorVisible: true


    //           Layout.minimumWidth: 400
    //           Layout.minimumHeight: 240
    //           Layout.preferredWidth: 600
    //           Layout.preferredHeight: 400

    //           TableViewColumn {
    //               id: titleColumn
    //               title: "Title"
    //               role: "title"
    //               movable: false
    //               resizable: false
    //               width: tableView.viewport.width - authorColumn.width
    //           }

    //           TableViewColumn {
    //               id: authorColumn
    //               title: "Author"
    //               role: "author"
    //               movable: false
    //               resizable: false
    //               width: tableView.viewport.width / 3
    //           }

    ////           model: SortFilterProxyModel {
    ////               id: proxyModel
    ////               source: sourceModel.count > 0 ? sourceModel : null

    ////               sortOrder: tableView.sortIndicatorOrder
    ////               sortCaseSensitivity: Qt.CaseInsensitive
    ////               sortRole: sourceModel.count > 0 ? tableView.getColumn(tableView.sortIndicatorColumn).role : ""

    ////               filterString: "*" + searchBox.text + "*"
    ////               filterSyntax: SortFilterProxyModel.Wildcard
    ////               filterCaseSensitivity: Qt.CaseInsensitive
    ////           }

    //           ListModel {
    //               id: sourceModel
    //               ListElement {
    //                   title: "Moby-Dick"
    //                   author: "Herman Melville"
    //               }
    //               ListElement {
    //                   title: "The Adventures of Tom Sawyer"
    //                   author: "Mark Twain"
    //               }
    //               ListElement {
    //                   title: "Cat’s Cradle"
    //                   author: "Kurt Vonnegut"
    //               }
    //               ListElement {
    //                   title: "Fahrenheit 451"
    //                   author: "Ray Bradbury"
    //               }
    //               ListElement {
    //                   title: "It"
    //                   author: "Stephen King"
    //               }
    //               ListElement {
    //                   title: "On the Road"
    //                   author: "Jack Kerouac"
    //               }
    //               ListElement {
    //                   title: "Of Mice and Men"
    //                   author: "John Steinbeck"
    //               }
    //               ListElement {
    //                   title: "Do Androids Dream of Electric Sheep?"
    //                   author: "Philip K. Dick"
    //               }
    //               ListElement {
    //                   title: "Uncle Tom’s Cabin"
    //                   author: "Harriet Beecher Stowe"
    //               }
    //               ListElement {
    //                   title: "The Call of the Wild"
    //                   author: "Jack London"
    //               }
    //               ListElement {
    //                   title: "The Old Man and the Sea"
    //                   author: "Ernest Hemingway"
    //               }
    //               ListElement {
    //                   title: "A Streetcar Named Desire"
    //                   author: "Tennessee Williams"
    //               }
    //               ListElement {
    //                   title: "Catch-22"
    //                   author: "Joseph Heller"
    //               }
    //               ListElement {
    //                   title: "One Flew Over the Cuckoo’s Nest"
    //                   author: "Ken Kesey"
    //               }
    //               ListElement {
    //                   title: "The Murders in the Rue Morgue"
    //                   author: "Edgar Allan Poe"
    //               }
    //               ListElement {
    //                   title: "Breakfast at Tiffany’s"
    //                   author: "Truman Capote"
    //               }
    //               ListElement {
    //                   title: "Death of a Salesman"
    //                   author: "Arthur Miller"
    //               }
    //               ListElement {
    //                   title: "Post Office"
    //                   author: "Charles Bukowski"
    //               }
    //               ListElement {
    //                   title: "Herbert West—Reanimator"
    //                   author: "H. P. Lovecraft"
    //               }
    //           }
    //       }

}



/*##^## Designer {
    D{i:18;anchors_y:"-36"}D{i:27;anchors_height:528;anchors_y:71}
}
 ##^##*/
