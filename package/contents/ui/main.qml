import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import QtQuick.Layouts 1.0
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.components 3.0 as PlasmaComponents3
import org.kde.plasma.plasmoid 2.0
import "netatmo.js" as Netatmo

/*
*/
Item {
    id: widget
    property bool hasUnread: true
    Plasmoid.icon: hasUnread ? "weather-clouds-wind-night" : "weather-clouds-wind"
    Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation
    Plasmoid.fullRepresentation: Item {
        Layout.minimumWidth: label.implicitWidth
        Layout.minimumHeight: label.implicitHeight
        Layout.preferredWidth: 640 * PlasmaCore.Units.devicePixelRatio
        Layout.preferredHeight: 480 * PlasmaCore.Units.devicePixelRatio

        PlasmaComponents.Label {
            id: label
            anchors.fill: parent
            text: hasUnread ? "Nuit!" : "Jour!"
            horizontalAlignment: Text.AlignHCenter
        }
    }
    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: widget.hasUnread = !widget.hasUnread
    }
}
//PlasmaComponents3.Label {
//    text: i18n("Hello World!")
//    Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation
//}
//
