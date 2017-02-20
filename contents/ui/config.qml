import QtQuick 2.5
import org.kde.plasma.core 2.0 as PlasmaCore

Item {
    id: root

    Rectangle {
        color: "#00050a"

        AnimatedImage {
            id: animation
            source: "animation.gif"
            fillMode: Image.PreserveAspectFit
            smooth: false
            cache: true
        }
    }
}
