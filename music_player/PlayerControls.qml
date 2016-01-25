import QtQuick 2.0

Item {
    /*property alias color: rect1.color*/
        id: player_controls
        x: 100
        y: 25
        width: 317
        height: 20

        PlayerIcon{
            id: button_prev
            width: 16
            height: 18
            image_url:"../assets/icon_prev.png"
            onClicked: { console.log('got it'); }
        }

        PlayerIcon {
            id: button_next
            x: 52
            y: 0
            width: 17
            height: 18
            image_url: "../assets/icon_next.png"
        }

        PlayerIcon {
            id: button_pause
            x: 24
            y: -4
            width: 19
            height: 26
            image_url: "../assets/icon_pause.png"
        }

        PlayerIcon {
            id: button_repeat
            x: 280
            y: -4
            width: 20
            height: 19
            image_url: "../assets/icon_repeat.png"
        }

}
