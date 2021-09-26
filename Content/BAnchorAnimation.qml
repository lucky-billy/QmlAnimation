import QtQuick 2.0

Rectangle {
    id: myRect
    width: 100; height: 100
    color: "red"

    property int type: 1

    states: [
        State {
            name: "right"
            AnchorChanges { target: myRect; anchors.right: parent.right }
        },
        State {
            name: "bottom"
            AnchorChanges { target: myRect; anchors.bottom: parent.bottom }
        },
        State {
            name: "left"
            AnchorChanges { target: myRect; anchors.left: parent.left }
        },
        State {
            name: "top"
            AnchorChanges { target: myRect; anchors.top: parent.top }
        }
    ]

    transitions: Transition {
        AnchorAnimation { duration: 500 }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            let state = {
                1: "right",
                2: "bottom",
                3: "left",
                4: "top"
            }
            myRect.state = state[myRect.type]

            myRect.type++
            if ( myRect.type > 4 ) {
                myRect.type = 1
            }
        }
    }
}
