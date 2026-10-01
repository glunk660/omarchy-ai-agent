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
    contentWidth: Style.space(360)
    contentHeight: Style.space(200)

    Column {
      anchors.fill: parent
      anchors.margins: Style.spacing.lg
      spacing: Style.spacing.md

      Text {
        text: "AI Agent Assistant"
        color: bar ? bar.foreground : Color.foreground
        font.family: bar ? bar.fontFamily : Style.font.family
        font.pixelSize: Style.font.bodyLarge
        font.bold: true
      }

      Text {
        text: "Your AI agent is running next to screen time."
        color: Color.muted
        font.family: bar ? bar.fontFamily : Style.font.family
        font.pixelSize: Style.font.body
        wrapMode: Text.WordWrap
        width: parent.width
      }
    }
  }
}
