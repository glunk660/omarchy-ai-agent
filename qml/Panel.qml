import QtQuick
import QtQuick.Controls
import Quickshell
import qs.Commons
import qs.Ui

Panel {
  id: root
  moduleName: "glunk.ai-agent"

  KeyboardPanel {
    id: panel
    anchorItem: button
    owner: root
    bar: root.bar
    open: root.opened
    contentWidth: Style.space(380)
    contentHeight: Style.space(340)

    Column {
      anchors.fill: parent
      anchors.margins: Style.spacing.lg
      spacing: Style.spacing.md

      Text {
        text: "AI Agents"
        color: bar ? bar.foreground : Color.foreground
        font.family: bar ? bar.fontFamily : Style.font.family
        font.pixelSize: Style.font.bodyLarge
        font.bold: true
      }

      Text {
        text: "Active coding assistants and models"
        color: Color.muted
        font.family: bar ? bar.fontFamily : Style.font.family
        font.pixelSize: Style.font.bodySmall
      }

      ListView {
        width: parent.width
        height: Style.space(210)
        clip: true
        spacing: Style.spacing.sm

        model: ListModel {
          ListElement { name: "Claude 3.5 Sonnet"; status: "Running (Active)"; accent: "#a6e3a1" }
          ListElement { name: "GPT-4o Assistant"; status: "Idle / Ready"; accent: "#f9e2af" }
          ListElement { name: "Gemini 1.5 Pro"; status: "Ready"; accent: "#89b4fa" }
        }

        delegate: Rectangle {
          width: parent.width
          height: Style.space(56)
          color: Color.surfaceContainer
          radius: Style.radius.sm
          border.color: Color.border

          Row {
            anchors.fill: parent
            anchors.margins: Style.spacing.sm
            spacing: Style.spacing.md
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
              width: 10
              height: 10
              radius: 5
              color: model.accent
              anchors.verticalCenter: parent.verticalCenter
            }

            Column {
              spacing: 2
              anchors.verticalCenter: parent.verticalCenter

              Text {
                text: model.name
                color: Color.foreground
                font.bold: true
                font.pixelSize: Style.font.body
              }

              Text {
                text: model.status
                color: Color.muted
                font.pixelSize: Style.font.bodySmall
              }
            }
          }
        }
      }
    }
  }
}
