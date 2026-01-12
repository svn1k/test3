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
        property int clickcount: 0
        Rectangle{
            id:buttonfield
            color: "orange"
            visible: true
            width: recta.width
            height: recta.height / 8 + 3
            anchors.bottom: parent.bottom
        }
        Rectangle{
            id: shopbutton
            color:"orange"
            visible: true
            anchors.bottom: recta.bottom
            anchors.left: recta.left
            width: recta.width /3 -5
            height: recta.height / 8
            border.width: 2
            radius: 25
            MouseArea{
                anchors.fill : parent
                onClicked: {
                    shop.visible = !shop.visible
                    result.visible = !shop.visible
                    stats.visible = false
                    settings.visible = false
                }
            }
            Text{
                visible:true
                anchors.centerIn: parent
                text:"shop"
                font.pointSize: 20
                font.bold:true
            }

        }
        Rectangle{
            id:shop
            color: "orange"
            visible: false
            width: recta.width
            height: recta.height / 8 * 7 - 5
            Text{
                text: "shop"
                font.bold: true
                font.pointSize: 30
                anchors.horizontalCenter: parent.horizontalCenter
                y: 15
            }
        }
        Rectangle{
            id:stats
            color: "orange"
            visible: false
            width: recta.width
            height: recta.height / 8 * 7 - 5
            Text{
                text: "stats"
                font.bold: true
                font.pointSize: 30
                anchors.horizontalCenter: parent.horizontalCenter
                y: 15
            }
            Text{
                text:"count of clicks:" + clickcount
                font.pointSize:20
                y:90
            }
        }
        Rectangle{
            id:settings
            color: "orange"
            visible: false
            width: recta.width
            height: recta.height / 8 * 7 - 5
            Text{
                text: "settings"
                font.bold: true
                font.pointSize: 30
                anchors.horizontalCenter: parent.horizontalCenter
                y: 15
            }
        }
        Rectangle{
            id:statsbutton
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
            MouseArea{
                anchors.fill : parent
                onClicked: {
                    stats.visible = !stats.visible
                    result.visible = !stats.visible
                    shop.visible = false
                    settings.visible = false
                }
            }
        }
        Rectangle{
            id:settingbutton
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
            MouseArea{
                anchors.fill : parent
                onClicked: {
                    settings.visible = !settings.visible
                    result.visible = !settings.visible
                    shop.visible = false
                    stats.visible = false
                }
            }
        }
        Text{
            id:result
            y: 30
            visible:true
            text: "0"
            font.pointSize: 22
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Rectangle{
            id: clickarea

            width:200
            height:300
            anchors.horizontalCenter: parent.horizontalCenter
            y: 180
            opacity: 0
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    clickcount += 1
                    let numa = parseInt(result.text)
                    let numb = cppClicker.click(numa)
                    result.text = numb.toString()
                }
            }
        }

    }

}

