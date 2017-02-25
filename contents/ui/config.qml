import QtQuick 2.5
import org.kde.plasma.core 2.0 as PlasmaCore
import QtQuick.Controls 1.0 as QtControls
import QtQuick.Dialogs 1.1 as QtDialogs
import QtGraphicalEffects 1.0

Column {
    id: root
    property alias cfg_Blur: blurCheckBox.checked

    Row {
        id: blurRow
        spacing: units.largeSpacing / 2

        QtControls.Label {
            width: formAlignment - units.largeSpacing

            anchors.verticalCenter: blurCheckBox.verticalCenter
            horizontalAlignment: Text.AlignRight
        }

        QtControls.CheckBox {
            id: blurCheckBox
            property int textLength: 11
            width: theme.mSize(theme.defaultFont).width * textLength
            text: "Enable blur"
        }
    }

    Row {
        id: previewRow
        spacing: units.largeSpacing / 2
        y: blurRow.height

        Rectangle {
            color: "#00050a"

            AnimatedImage {
                id: animation
                source: "animation.gif"
                fillMode: Image.PreserveAspectFit
                smooth: false
                cache: true
            }

            FastBlur {
                id: blur
                visible: cfg_Blur
                anchors.fill: animation

                source: animation
                radius: 50
            }
        }
    }
}
