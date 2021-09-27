import QtQuick 2.0

Item {
    Rectangle {
        width: 60; height: 60
        x: rect1.x - 5; y: rect1.y - 5
        color: "green"

        Behavior on x { SmoothedAnimation { velocity: 200; duration: 500 } }
        Behavior on y { SmoothedAnimation { velocity: 200; duration: 500 } }
    }

    Rectangle {
        id: rect1
        x: 5; y: 5
        width: 50; height: 50
        color: "red"
    }

    focus: true
    Keys.onRightPressed: rect1.x = rect1.x + 100
    Keys.onLeftPressed: rect1.x = rect1.x - 100
    Keys.onUpPressed: rect1.y = rect1.y - 100
    Keys.onDownPressed: rect1.y = rect1.y + 100
}
