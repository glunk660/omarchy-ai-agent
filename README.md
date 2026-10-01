# Omarchy AI Agent Extension

An extension addon for the [Omarchy](https://omarchy.org/) Linux desktop shell that places an AI Agent assistant widget right next to your Screen Time widget in the top status bar.

## Features

- **Status Bar Integration**: Clean, native bar icon matching Omarchy design language.
- **Side-by-Side with Screen Time**: Designed to complement usage tracking with active AI agent status.
- **Interactive Panel**: Quick popup panel to check agent state, prompts, and shortcuts.
- **Hot-reloading**: Built on Quickshell for instant style and code reloads.

## Installation

Add this plugin to your Omarchy shell:

```bash
omarchy plugin add https://github.com/glunk660/omarchy-ai-agent.git
```

Then enable and place it on your bar:

```bash
omarchy plugin enable glunk.ai-agent
omarchy bar move glunk.ai-agent --section right
omarchy restart shell
```

## License

MIT
