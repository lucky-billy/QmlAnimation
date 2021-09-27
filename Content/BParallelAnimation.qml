import QtQuick 2.0

Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"

    ParallelAnimation {
        id: animation
        running: false
        NumberAnimation { target: rect; property: "x"; to: 100; duration: 1000 }
        NumberAnimation { target: rect; property: "y"; to: 100; duration: 1000 }
        NumberAnimation { target: rect; property: "width"; to: 200; duration: 1000 }
        NumberAnimation { target: rect; property: "height"; to: 200; duration: 1000 }
        NumberAnimation { target: rect; property: "rotation"; to: 90; duration: 1000 }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: animation.start()
    }
}
