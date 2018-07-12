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
            text: qsTr("Departments")
            font.pixelSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
        }

    ListView {
            id: listView
            anchors.top: text1.bottom
            anchors.topMargin: 50
            width: parent.width
            height: 160
            delegate: Item {
                width: parent.width
                height: 40
                Row {
                    id: row1
                    spacing: 2
                    anchors.verticalCenter:parent.verticalCenter
                    anchors.left:parent.left
                    width: parent.width
                        Column{
                            id:column1
                            spacing: 10
                            width:parent.width*0.6

                            Button{
                                width:parent.width
                                height:38
                                background: Rectangle{
                                anchors.fill: parent
                                color:"#f6f6f6"
                                }
                                Text {
                                    id:list_element
                                    text: name
                                    font.bold: true
                                    anchors.left: parent.left
                                    anchors.leftMargin: 25
                                    anchors.verticalCenter: parent.verticalCenter
                                }
                            }


                        }
                        Column{
                        id:column2
                        spacing: 10
                        width: (parent.width*0.4) - 10
                        Button{
                            width:parent.width
                            height:38
                            text:assistant
                            font.bold: true
                            background: Rectangle{
                            anchors.fill: parent
                            color:"#f6f6f6"
                            }
                            }
                        }

                        }
                }

            model: ListModel {
                ListElement {
                    name: "Department of Computer Science and Engineering"
                    assistant:"ABC XYZ"
                }

                ListElement {
                    name: "Department of Pharmacy"
                    assistant:"ASD XRE"
                }

                ListElement {
                    name: "Department of Civil and Geomatics Engineering"
                    assistant:"ASE XRF"
                }

                ListElement {
                    name: "Department of Electrical Engineering"
                    assistant:"ARD XTE"
                }
            }
    }

        Button {
            id: back
            x:10
            y:10
            width: 44
            height: 40
            Image {
                    id: back_button
                    anchors.fill: parent
                    visible: true
                    fillMode: Image.PreserveAspectCrop
                    source: "qrc:/../../Desktop/KU Notes Resources/back.png"
                }
            spacing: 10
            anchors.top: parent.top
            background:Rectangle{
                 anchors.fill: parent
                      }
        }
}
