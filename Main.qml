import QtQuick
import QtQuick.Window 2.2


Window {
    visible: true
    width: 480
    height: 640
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width
    Rectangle{
        id:recta
        visible: true
        width: 480
        height: 640
        color: "green"
        Rectangle{
            color:"orange"
            visible: true
            anchors.bottom: recta.bottom
            anchors.left: recta.left
            width: recta.width /3 -5
            height: recta.height / 8
            border.width: 2
            radius: 25
            Text{
                visible:true
                anchors.centerIn: parent
                text:"shop"
                font.pointSize: 20
                font.bold:true
            }
        }
        Rectangle{
            color:"orange"
            visible: true
            anchors.bottom: recta.bottom
            anchors.horizontalCenter: recta.horizontalCenter
            width: recta.width /3 -5
            height: recta.height / 8
            border.width: 2
            radius: 25
            Text{
                visible:true
                anchors.centerIn: parent
                text:"stats"
                font.pointSize: 20
                font.bold:true
            }
        }
        Rectangle{
            color:"orange"
            visible: true
            anchors.bottom: recta.bottom
            anchors.right: recta.right
            width: recta.width /3 -5
            height: recta.height / 8
            border.width: 2
            radius: 25
            Text{
                visible:true
                anchors.centerIn: parent
                text:"settings"
                font.pointSize: 20
                font.bold:true
            }
        }
        Text{
            id:result
            y: 30
            visible:true
            text: textContent
            font.pointSize: 22
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Rectangle{
            width:200
            height:300
            anchors.horizontalCenter: parent.horizontalCenter
            y: 180

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    let currentNumber = parseInt(result.text)
                    let nextValue = cppClicker.click(currentNumber)
                    result.text = nextValue.toString()
                }
            }
        }

    }
}

