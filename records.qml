import QtQuick 2.11
import QtQuick.Window 2.11
import QtGraphicalEffects 1.0
import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("AIMMS ")
    Text {
        id: text1
        x: 291
        y: 59
        text: qsTr("Records")
        font.pixelSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
    }
        TextField {
            id: textInput
            x: 298
            y: 29
            width: 100
            height: 20
            placeholderText: qsTr("Search")
            font.pixelSize: 8
            color:"black"
            anchors.centerIn: parent
        }
}
