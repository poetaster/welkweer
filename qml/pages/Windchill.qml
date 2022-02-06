import QtQuick 2.5
import Sailfish.Silica 1.0
import "../common"

Page {
    id: windchillPage

    onStatusChanged: {
        switch (status) {
        case PageStatus.Active:
            pageStack.pushAttached(Qt.resolvedUrl("Warnings.qml"))
        }
    }

    Column {
        id: col
        spacing: Theme.paddingLarge
        width: parent.width
        PageHeader {
            title: isPortrait ? "Gevoelstemperatuur NL" : "Gevoelstemp\nNL"
        }
    }

    ZoomableImage {
        id: zoomableImage
        anchors.fill: parent
        imagePath: "http://www.weerplaza.nl/gdata/10min/GMT_WCHILL_latest.png"
    }
}
