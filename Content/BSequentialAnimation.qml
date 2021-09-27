import QtQuick 2.0

Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"

    SequentialAnimation {
        id: animation
        running: false
        NumberAnimation { target: rect; property: "x"; to: 100; duration: 500 }
        NumberAnimation { target: rect; property: "y"; to: 100; duration: 500 }
        NumberAnimation { target: rect; property: "x"; to: 0; duration: 500 }
        NumberAnimation { target: rect; property: "y"; to: 0; duration: 500 }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: animation.start()
    }
}
