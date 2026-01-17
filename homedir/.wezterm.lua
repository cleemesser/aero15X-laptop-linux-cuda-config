local wezterm = require 'wezterm'
local act = wezterm.action

return {
  keys = {
    -- Press Ctrl+F1 to open the launcher
    { key = 'F1',
      mods = 'CTRL',
      action = act.ShowLauncher },
  },
}
