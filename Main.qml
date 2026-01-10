import QtQuick
import QtQuick.Window 2.2


Rectangle{
    id: firstrect
    width: 640
    height: 480
    color: "#002700"
    visible: true
    Text{
        id: textt
        visible:true
        text: "123"
        y: 30
        anchors.centerIn: firstrect
        color: "#FFFFFF"
        font.pointSize: 24
    }

    Grid{
        id: colorpick
        x:4
        anchors.bottom: firstrect.bottom
        anchors.bottomMargin: 4
        rows: 2
        columns:3
        spacing: 8
        Cell { cellColor: "red"; onClicked: textt.color = cellColor }
        Cell { cellColor: "green"; onClicked: textt.color = cellColor }
        Cell { cellColor: "blue"; onClicked: textt.color = cellColor }
        Cell { cellColor: "yellow"; onClicked: textt.color = cellColor }
        Cell { cellColor: "steelblue"; onClicked: textt.color = cellColor }
        Cell { cellColor: "black"; onClicked: textt.color = cellColor }
    }
    Rectangle{
        id: textoffon
        property bool xyi:false
        visible: true
        width: 640 /4
        height: 480 /4
        anchors.bottom: firstrect.bottom
        anchors.right: firstrect.right
        color: "orange"
        border.color: "white"
        border.width: 4
        radius: 20
        Text{
            id: onofftext
            anchors.centerIn:parent
            visible:true
            color:"white"
            text: textoffon.xyi ? "turn on txt" : "turn off txt"
            font.pointSize: 20
            }
        MouseArea {
                anchors.fill: parent
                onClicked: {
                    textt.visible = !textt.visible
                    textoffon.xyi = !textoffon.xyi
                }
        }
    }
}

