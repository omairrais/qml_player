import QtQuick 2.0

Image {
    property alias image_url: button.source
    signal clicked(string message)

    id: button
    source: source

    MouseArea {
        anchors.fill: parent
            onClicked: {
                button.clicked("hi")
        }
    }
    onClicked:  {console.log("send signal emitted with notice: " + message)}
}
