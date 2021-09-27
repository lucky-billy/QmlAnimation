import QtQuick 2.0

Rectangle {
    id: myRect
    x: 50; y: 50
    width: 100; height: 100
    color: "red"

    transform: Rotation {
        angle: 45
        origin.x: 50; origin.y: 50
        axis: Qt.vector3d(0, 1, 0)

        SequentialAnimation on axis {
            id: animation
            running: false
            Vector3dAnimation { from: "1, 0, 0"; to: "0, 1, 0"; duration: 1000 }
            Vector3dAnimation { from: "0, 1, 0"; to: "0, 0, 1"; duration: 1000 }
            Vector3dAnimation { from: "0, 0, 1"; to: "1, 0, 1"; duration: 1000 }
            Vector3dAnimation { from: "1, 0, 1"; to: "1, 1, 0"; duration: 1000 }
            Vector3dAnimation { from: "1, 1, 0"; to: "1, 1, 1"; duration: 1000 }
            Vector3dAnimation { from: "1, 1, 1"; to: "1, 0, 1"; duration: 1000 }
            Vector3dAnimation { from: "1, 0, 1"; to: "0, 0, 1"; duration: 1000 }
            Vector3dAnimation { from: "0, 0, 1"; to: "0, 1, 0"; duration: 1000 }
            Vector3dAnimation { from: "0, 1, 0"; to: "1, 0, 0"; duration: 1000 }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: animation.start()
    }
}
