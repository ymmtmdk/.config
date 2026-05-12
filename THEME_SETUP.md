# Kimbie Dark Theme Setup

This document outlines the configuration and settings used to achieve a consistent **Kimbie Dark** theme across iTerm2, Neovim, Fish shell, and Starship.

## Color Palette

The theme is based on the following hex codes extracted from the VS Code Kimbie Dark theme:

| Element | Hex Code | Description |
| :--- | :--- | :--- |
| Background | `#221a0f` | Dark Brown |
| Foreground | `#d3af86` | Light Beige |
| Sidebar BG | `#362712` | Medium Brown |
| Status Bar BG | `#423523` | Darker Brown |
| Cursor | `#d3af86` | Same as Foreground |
| Selection | `#84613d` | Bright Brown (with transparency) |
| Line Highlight | `#5e452b` | Intermediate Brown |
| Keyword | `#98676a` | Muted Red/Pink |
| Variable | `#dc3958` | Bright Red |
| Function | `#8ab1b0` | Blue-Green/Cyan |
| Class/Type | `#f06431` | Orange |
| String | `#889b4a` | Olive/Green |
| Number/Const | `#f79a32` | Yellow/Orange |
| Comment | `#a57a4c` | Light Brown |

## Tool Configurations

### 1. iTerm2
A Dynamic Profile was created to automatically add the "Kimbie Dark" profile.
- **File**: `~/Library/Application Support/iTerm2/DynamicProfiles/KimbieDark.json`
- **Features**: Accurate mapping of ANSI colors to Kimbie tokens, custom selection, and cursor colors.

### 2. Neovim
A custom Lua-based theme was implemented to ensure 100% fidelity to the requested palette and support background transparency.
- **File**: `~/.config/nvim/lua/plugins/kimbie_dark.lua`
- **Key Settings**:
    - Custom highlight group definitions for `Normal`, `Keyword`, `Function`, etc.
    - `bg = "NONE"` for transparency on `Normal`, `NormalFloat`, `LineNr`, etc.
    - Uses `priority = 1000` to ensure it loads early.

### 3. Fish Shell
Colors are set as universal variables (`set -Ux`) for persistence across sessions.
- **Plugin**: `FabioAntunes/base16-fish-shell` installed via Fisher.
- **Manual Overrides**: Key syntax highlighting variables (`fish_color_command`, `fish_color_quote`, etc.) were manually set to the hex codes above to ensure contrast and accuracy.

### 4. Starship
The prompt was themed to match the status bar and sidebar colors of Kimbie Dark.
- **File**: `~/.config/starship.toml`
- **Highlights**:
    - Directory segment matches `Status Bar BG`.
    - Git segment matches `Sidebar BG`.
    - Character symbols use `String` (Green) for success and `Variable` (Red) for error.

## Maintenance
To update colors, modify the corresponding configuration files and re-source or restart the application. For Neovim, the `kimbie_dark.lua` file contains a central `colors` table for easy adjustments.
