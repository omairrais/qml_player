import QtQuick 2.0

Rectangle {
    id: music_image_border
    x: 13
    y: 7
    width: 67
    height: 67
    radius: 3
    gradient: Gradient {
        GradientStop { position: 0; color: "#ffffff"; }
        GradientStop { position: 1; color: "#bbb6bc"; }
    }

    Rectangle {
        id: music_image
        x: 3
        y: 3
        width: 61
        height: 61
        color: "#878fd7"
        radius: 0
        border.width: 2
    }
}
