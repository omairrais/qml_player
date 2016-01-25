import QtQuick 2.0

Text {
    property alias duration: label.totaltime
    id: label
    color: "#c9c9c9"
    font.pixelSize: 12
    property int totaltime: 1
    readonly property int minutes: Math.floor(label.totaltime / 60000)
    readonly property int seconds: Math.round((label.totaltime % 60000) / 1000)
    text: Qt.formatTime(new Date(0, 0, 0, 0, minutes, seconds), qsTr("mm:ss"))
}
