import QtQuick 2.0

Item {
    width: 300; height: 300

    Rectangle {
        id: myRect
        width: 150; height: 100
        anchors.centerIn: parent
        color: "red"
        antialiasing: true

        property int type: 1

        states: [
            State {
                name: "state1"
                PropertyChanges { target: myRect; rotation: 45 }
            },
            State {
                name: "state2"
                PropertyChanges { target: myRect; rotation: 90 }
            },
            State {
                name: "state3"
                PropertyChanges { target: myRect; rotation: 180 }
            }
        ]

        transitions: Transition {
            RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            let state = {
                1: "state1",
                2: "state2",
                3: "state3"
            }
            myRect.state = state[myRect.type]

            myRect.type++
            if ( myRect.type > 3 ) {
                myRect.type = 1
            }
        }
    }
}
