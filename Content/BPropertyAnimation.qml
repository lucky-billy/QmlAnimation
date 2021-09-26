import QtQuick 2.0

Rectangle {
    width: 100; height: 100
    color: "red"

    property bool location: true

    Behavior on x { PropertyAnimation {} }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            var x = location ? 50 : 0
            parent.x = x
            location = !location
        }
    }
}
