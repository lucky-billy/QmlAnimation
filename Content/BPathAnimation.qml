import QtQuick 2.0

Rectangle {
    width: 400; height: 400

    PathInterpolator {
        id: motionPath

        path: Path {
            startX: 0; startY: 0

            PathCubic {
                x: 350; y: 350

                control1X: 350; control1Y: 0
                control2X: 0; control2Y: 350
            }
        }

        NumberAnimation on progress { id: animation; from: 0; to: 1; duration: 2000 }
    }

    Rectangle {
        x: motionPath.x; y: motionPath.y
        width: 50; height: 50
        rotation: motionPath.angle
        color: "green"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: animation.start()
    }
}
