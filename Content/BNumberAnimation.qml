import QtQuick 2.0

Rectangle {
    id: myRect
    width: 100; height: 100
    color: "red"

    property int type: 1

    states: [
        State {
            name: "step1"
            PropertyChanges { target: myRect; x: 60; y: 60; width: 120; height: 120; rotation: 30 }
        },
        State {
            name: "step2"
            PropertyChanges { target: myRect; x: 60; y: 60; width: 120; height: 120; rotation: 60 }
        },
        State {
            name: "step3"
            PropertyChanges { target: myRect; x: 40; y: 40; width: 180; height: 180; rotation: 90 }
        },
        State {
            name: "step4"
            PropertyChanges { target: myRect; x: 100; y: 100; width: 50; height: 50; rotation: 45 }
        }
    ]

    transitions: Transition {
        NumberAnimation { duration: 500 }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            let state = {
                1: "step1",
                2: "step2",
                3: "step3",
                4: "step4"
            }
            myRect.state = state[myRect.type]

            myRect.type++
            if ( myRect.type > 4 ) {
                myRect.type = 1
            }
        }
    }
}
