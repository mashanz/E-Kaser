import QtQuick 2.0
Item {
    id: style
    property alias dlgAtts: attributes
    property color fontColor: "#232122"

    property color primaryTextColor: "#000000"
    property color secondaryTextColor: "#FFFFFF"

    property color active: "#DDDEDE"
    property color deactive: "#232122"

    property color primaryBgColor: "#7BA4A8"
    property color secondaryBgColor: "#A4C05B"

    property color capsColor: "#A4C05B"

    QtObject {
        id: attributes
        property string name: "something"
        property int size: 38
    }

}
