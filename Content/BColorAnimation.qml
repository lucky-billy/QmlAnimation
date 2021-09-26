import QtQuick 2.0

Rectangle {
    id: myRect
    width: 100; height: 100
    color: "black"

    property int type: 1

    states: [
        State {
            name: "red"
            PropertyChanges { target: myRect; color: "red" }
        },
        State {
            name: "yellow"
            PropertyChanges { target: myRect; color: "yellow" }
        },
        State {
            name: "pink"
            PropertyChanges { target: myRect; color: "pink" }
        },
        State {
            name: "blue"
            PropertyChanges { target: myRect; color: "blue" }
        },
        State {
            name: "black"
            PropertyChanges { target: myRect; color: "black" }
        }
    ]

    transitions: Transition {
        ColorAnimation { duration: 500 }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            let state = {
                1: "red",
                2: "yellow",
                3: "pink",
                4: "blue",
                5: "black",
            }
            myRect.state = state[myRect.type]

            myRect.type++
            if ( myRect.type > 5 ) {
                myRect.type = 1
            }
        }
    }
}
