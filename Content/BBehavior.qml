import QtQuick 2.0

Rectangle {
    id: coloredRect
    width: 100; height: 100
    anchors.centerIn: parent
    color: "red"

    states: State {
        name: "GreenState"
        when: mouser.containsMouse

        PropertyChanges {
            target: coloredRect
            color: "green"
        }
    }

    Behavior on color {  ColorAnimation {} }

    MouseArea {
        id: mouser
        anchors.fill: parent
        hoverEnabled: true
    }
}
