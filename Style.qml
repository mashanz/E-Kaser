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


    property color background: "#FAFAFA"
    property color border: "#ECF0F3"
    property color inputTxt: "#FCFCFD"
    property color hint: "#9C9C9D"
    property color button: "#2196F3"
    property color bgCard: "#FFFFFF"
    property color btCardTitle: "#2196F3"
    property color header1: "#78909C"
    property color header2: "#64B5F6"
    property color button1: "#FFA000"
    property color button2: "#47C200"
    property color text: "#222222"

    QtObject {
        id: attributes
        property string name: "something"
        property int size: 38
    }

}
