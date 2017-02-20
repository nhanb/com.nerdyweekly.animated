import QtQuick 2.5
import org.kde.plasma.core 2.0 as PlasmaCore

Rectangle {
    id: root
    width: 1920; height: 1080
    color: "#00050a"

    AnimatedImage {
        id: animation
        source: "animation.gif"
        height: 1094; width: 1900
        x: 20
        fillMode: Image.PreserveAspectFit
        smooth: false
        cache: true
    }
}
