import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Rectangle {
    id: root
    AnimatedImage {
        id: animation
        source: "animation.gif"
        width: 1920; height: 1080
        fillMode: Image.PreserveAspectFit
        smooth: false
    }
}
