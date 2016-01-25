import QtQuick 2.0

Item {
    property alias seek: seek_bar_played.width
    property alias loaded: seek_bar_loaded.width
        id: seek_bar_container
        width: 240
        height: 11

        Rectangle {
            id: seek_bar_bg
            x: 0
            y: 0
            width: 240
            height: 11
            radius: 6
            gradient: Gradient {
                GradientStop { position: 0; color: "#171616"; }
                GradientStop { position: 0.5; color: "#222121"; }
                GradientStop { position: 1; color: "#282727"; }
            }
            border.color: "#171616"
            border.width: 2
        }

        Rectangle {
            id: seek_bar_loaded
            x: 0
            y: 0
            height: 11
            radius: 6
            gradient: Gradient {
                GradientStop { position: 0; color: "#878787"; }
                GradientStop { position: 1; color: "#525252"; }
            }
            border.color: "#00000000"
            border.width: 2
        }

        Rectangle {
            id: seek_bar_played
            x: 0
            y: 0
            height: 11
            radius: 6
            border.width: 2
            gradient: Gradient {
                GradientStop { position: 0; color: "#8ec7f8"; }
                GradientStop { position: 1; color: "#2986cb"; }
            }
            border.color: "#00000000"
        }

        Item {
            id: seek_button_container
            x: seek_bar_played.width-10
            y: -4
            width: 19
            height: 19

            Rectangle {
                id: seek_button
                width: 19
                height: 19
                radius: 10
                border.color: "#343334"
                border.width: 1
                gradient: Gradient {
                    GradientStop { position: 0; color: "#e9e9e9"; }
                    GradientStop { position: 1; color: "#a9a9a9"; }
                }
            }

            Rectangle {
                x: 5
                y: 5
                width: 9
                height: 9
                radius: 4
                gradient: Gradient {
                    GradientStop { position: 0; color: "#676767"; }
                    GradientStop { position: 1; color: "#bdbdbd"; }
                }
            }
        }

}
