import QtQuick 2.0

Rectangle {
    id: myRect
    width: 300; height: 100
    color: "black"

    property int type: 1

    Rectangle {
        id: redRect
        width: 100; height: 100
        color: "red"
    }

    Rectangle {
        id: blueRect
        x: 110
        width: 100; height: 100
        color: "blue"
    }

    Rectangle {
        id: yellowRect
        x: 220; y: 10
        width: 50; height: 50
        color: "yellow"

        states: [
            State {
                name: "red"
                ParentChange { target: yellowRect; parent: redRect; x: 10; y: 10 }
            },
            State {
                name: "blue"
                ParentChange { target: yellowRect; parent: blueRect; x: 10; y: 10 }
            },
            State {
                name: "black"
                ParentChange { target: yellowRect; parent: myRect; x: 220; y: 10 }
            }
        ]

        transitions: Transition {
            ParentAnimation {
                NumberAnimation { properties: "x,y"; duration: 500 }
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                let state = {
                    1: "red",
                    2: "blue",
                    3: "black"
                }
                yellowRect.state = state[myRect.type]

                myRect.type++
                if ( myRect.type > 3 ) {
                    myRect.type = 1
                }
            }
        }
    }
}
