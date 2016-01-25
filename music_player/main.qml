import QtQuick 2.3
import QtQuick.Window 2.2
import QtMultimedia 5.5
import QtQuick.Controls 1.0
import QtQuick.Dialogs 1.0

Window {
    id: main_window
    visible: true
    MediaPlayer {
        id: mediaPlayer
        autoPlay: true
        readonly property string title: !!metaData.author && !!metaData.title
                                        ? qsTr("%1 - %2").arg(metaData.author).arg(metaData.title)
                                        : metaData.author || metaData.title || source
    }
    Rectangle{
        id: background_rect
        x: 0
        y: 0
        width:parent.width
        height:parent.height
        border.color: "#343334"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 0.50
                color: "#dde6ef"
            }
            GradientStop { position: 1; color: "#a9afbc"; }
        }
        border.width: 0


        Rectangle{
            id: player
            x: 8
            y: 8
            width:411
            height:82
            radius: 6
            gradient: Gradient {
                GradientStop { position: 0; color: "#605f5f" }
                GradientStop { position: 0.47; color: "#353434"; }
                GradientStop { position: 0.5; color: "#2f2d2d"; }
                GradientStop { position: 1; color: "#242424"; }
            }
            border.width: 2
            border.color: "#000000"

Thumbnail{}

            Text {
                id: album_title
                x: 180
                y: 10
                color: "#c9c9c9"
                text: qsTr("Art School Flying Object")
                font.pixelSize: 12
            }

            Text {
                id: song_title
                x: 180
                y: 28
                color: "#9fb5d5"
                text: qsTr("Goodnight Electric")
                font.pixelSize: 12
            }
            SeekBar{
                x: 125
                y: 55
                seek:50
                loaded:70
            }
            TimerLabel{
                id: current_seconds
                x: 89
                y: 54
                duration:mediaPlayer.position
            }

            TimerLabel{
                id: remaining_seconds
                x: 369
                y: 54
                duration:mediaPlayer.duration
            }

        }
        PlayerControls{  }

        Button {
            id: openButton
            x: 8
            y: 96
            text: qsTr("play song")
            onClicked: mediaPlayer.source='http://omairrais.com/sawan.mp3';
        }

        /*Button {
    id: openButton

    text: qsTr("...")
    onClicked: fileDialog.open()

    FileDialog {
        id: fileDialog

        folder : musicUrl
        title: qsTr("Open file")
        nameFilters: [qsTr("MP3 files (*.mp3)"), qsTr("All files (*.*)")]
        onAccepted: mediaPlayer.source = fileDialog.fileUrl
    }
}*/

    }


    /* Component.onCompleted: {
        var songlist = new XMLHttpRequest();
            songlist.onreadystatechange = function() {
                if (songlist.readyState == XMLHttpRequest.DONE) {
                    var a = songlist.responseXML.documentElement;
                    for (var ii = 0; ii < a.childNodes.length; ++ii) {
                        console.log(a.childNodes[ii].nodeName);
                    }
                }
            }

            songlist.open("GET", "../albums/songslist.xml");
            songlist.send();
    }*/

}
