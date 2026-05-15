# Kimbie Dark Theme Setup

This document defines the configuration for a consistent **Kimbie Dark** environment across all terminal tools.

## Source of Truth
The primary source of truth for all color values is the VS Code theme file:
`/Applications/Antigravity.app/Contents/Resources/app/extensions/theme-kimbie-dark/themes/kimbie-dark-color-theme.json`

## Color Palette

| Category | Element | Hex Code | Description |
| :--- | :--- | :--- | :--- |
| **Core** | Editor Background | `#221a0f` | Dark Brown |
| | Editor Foreground | `#d3af86` | Light Beige |
| **UI** | Sidebar Background | `#362712` | Medium Brown |
| | Status Bar Background| `#423523` | Darker Brown |
| | Menu Foreground | `#CCCCCC` | Bright Grey (used for ANSI 7/White) |
| | Highlight Foreground | `#e3b583` | Bright Beige (used for Bold/ANSI 15) |
| | Selection Background | `#84613d` | Bright Brown |
| | Line Highlight | `#5e452b` | Intermediate Brown |
| **Syntax** | Keywords | `#98676a` | Muted Red/Pink |
| | Variables | `#dc3958` | Bright Red |
| | Functions | `#8ab1b0` | Blue-Green/Cyan |
| | Classes / Types | `#f06431` | Orange |
| | Strings | `#889b4a` | Olive/Green |
| | Numbers / Constants | `#f79a32` | Yellow/Orange |
| | Comments | `#a57a4c` | Light Brown |

## Tool Configurations

### 1. iTerm2 (Managed in Git)
- **Profile File**: \`~/.config/iterm2/DynamicProfiles/KimbieDark.json\` (Symlinked to \`~/Library/Application Support/iTerm2/DynamicProfiles/\`)
- **Global Settings**: \`~/.config/iterm2/com.googlecode.iterm2.plist\` (Converted to XML for better diffs)
- **Git Management**: 
    - Settings are automatically saved to the repo's \`.plist\` when iTerm2 is configured to "Load preferences from a custom folder".
    - The Dynamic Profile JSON allows for easy color adjustments directly in the repo.
- **Visibility Fixes**:

    - **ANSI 7 (White)** is set to `#CCCCCC` to ensure "Dim" text (like headers in `gh run list`) remains visible.
    - **Bold Color** is set to `#e3b583` to differentiate emphasized text from the background.
    - **ANSI 0/8 (Black)** use the Line Highlight/Comment colors to avoid being invisible against the background.

### 2. Neovim (Custom Lua)
- **File**: `~/.config/nvim/lua/plugins/kimbie_dark.lua`
- **Implementation**: A manual highlight setup using Lua to ensure exact color fidelity and **background transparency**.
- **Transparency**: `Normal`, `SignColumn`, `LineNr`, and other UI elements have `bg = "NONE"` to inherit the terminal's background.

### 3. Fish Shell (Universal Variables)
- **Mechanism**: Colors are stored as universal variables (`set -Ux`).
- **Sync**: The `fish_color_*` variables are manually mapped to the syntax colors listed above. The `base16-fish-shell` plugin was used for initialization but removed to keep the config clean; the variables persist.

### 4. Starship (Prompt)
- **File**: `~/.config/starship.toml`
- **Design**:
    - Segment backgrounds are mapped to UI colors (Sidebar/Status Bar BG).
    - Success/Error symbols use the String (Green) and Variable (Red) hex codes.

## Maintenance
To adjust the theme, reference the hex codes in the table above and update the respective config files. For Neovim, all colors are defined in a single table at the top of the `kimbie_dark.lua` file.
