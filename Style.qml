import QtQuick 2.0
Item {
    id: style
    property alias dlgAtts: attributes
    property color fontColor: "green"

    property color primaryTextColor: "#000000"
    property color secondaryTextColor: "#c0c0c0"

    property color active: "#F3F4EC"
    property color deactive: "#CCCFBC"

    property color primaryBgColor: "#507642"
    property color secondaryBgColor: "#86942A"
    property color capsColor: "#A37B45"

    QtObject {
        id: attributes
        property string name: "something"
        property int size: 38
    }

}
