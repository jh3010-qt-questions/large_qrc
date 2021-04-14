import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        Image {
            width: 200
            height: 200

            fillMode: Image.PreserveAspectFit

            source: "qrc:drawing.svg"
        }

        Image {

            width: 200
            height: 200

            fillMode: Image.PreserveAspectFit
            source: "file:///" + applicationDirPath + "/image_assets/original_image_png"
        }
    }
}
