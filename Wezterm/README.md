Note: The format for this file was stolen from the catppuccin repo!


1. Create a directory named `~/.config/wezterm/colors` 
2. Copy `Mountain.toml` to that directory
3. Open your Wezterm config file (or create it if it doesn't exist: `~/.config/wezterm/wezterm.lua`) and add the following lines:
```lua
local wezterm = require("wezterm")

return {
    color_scheme = "Catppuccin",
    -- your config
  }
```
