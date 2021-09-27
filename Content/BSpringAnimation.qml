import QtQuick 2.0

Rectangle {
    id: rect
    width: 50; height: 50
    color: "red"

    Behavior on x { SpringAnimation { spring: 2; damping: 0.2 } }
    Behavior on y { SpringAnimation { spring: 2; damping: 0.2 } }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            rect.x = mouse.x - rect.width/2
            rect.y = mouse.y - rect.height/2
        }
    }
}
