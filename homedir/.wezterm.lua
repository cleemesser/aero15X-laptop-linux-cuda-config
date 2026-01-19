local wezterm = require 'wezterm'
local config = {}

config.disable_default_key_bindings = true
config.enable_kitty_keyboard = true
config.enable_csi_u_key_encoding = true
config.allow_win32_input_mode = false
config.audible_bell = 'Disabled'

-- Set Ctrl+F2 as the leader key, avoid Ctrl+t as used for my tmux
-- note emacs seems to grab this key so not working when have it running in terminal on wezterm

config.leader = { key = 'F2', mods = 'CTRL', timeout_milliseconds = 1000 }


config.keys = {-- CTRL-SHIFT-l activates the debug overlay
  --  { key = 'L', mods = 'CTRL', action = wezterm.action.ShowDebugOverlay,

  -- for claude-code
  {
      key="Enter",
      mods="SHIFT",
      action=wezterm.action({SendString="\x1b\r"}),
      },

  {
    key = 'C',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
  },
 --   { key = 'V', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },

  -- paste from the primary selection
  {
    key = 'V',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.PasteFrom 'PrimarySelection' },
  {
      key = 'F1',
      mods = 'CTRL', -- might want to use 'CTRL' as this is less likely to interfere with other terminal bindings, using SHIFT F1 (S-F1) in tmux
      action = wezterm.action.ShowLauncher,
    },
      -- Split horizontally with Leader + |
  {
    key = '|',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Split vertically with Leader + -
  {
    key = '-',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Navigate panes with Leader + arrow keys
  {
    key = 'LeftArrow',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },

    -- navigate wezterm tabs with Leader + Tab/Shift+Tab
{
    key = 'Tab',
    mods = 'LEADER',
    action = wezterm.action.ActivateTabRelative(1),
  },
  {
    key = 'Tab',
    mods = 'LEADER|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1),
  },

}
-- note by default, Shift-middle down button will paste even if terminal program is accepting mouse events
-- https://wezfurlong.org/wezterm/config/mouse.html#default-mouse-assignments

--- https://gilbertsanchez.com/posts/my-terminal-wezterm/
local mouse_bindings = {}
local launch_menu = {}
--- Set Pwsh as the default on Windows
--- config.default_prog = { 'pwsh.exe', '-NoLogo' }
--- config.default_prog = { 'powershell.exe', '-NoLogo' }
--- set cmd.exe as default on Windows
config.default_prog = { 'cmd.exe', '-NoLogo' }

-- windows exclusive launch menu
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    table.insert(launch_menu, {
        label = 'mamba VS',
        args = {
            'cmd.exe',
            '/k',
	    -- 'C:/Users/clee/mambaforge/Scripts/activate_vsvars.bat',
	    'C:/Users/clee/mambaforge/condabin/conda_vc_hook.bat',

        },
    })

    table.insert(launch_menu, {
        label = 'PowerShell',
        args = { 'powershell.exe', '-NoLogo' },
    })

    --    table.insert(launch_menu, {
    --                   label = 'Pwsh',
    --                   args = { 'pwsh.exe', '-NoLogo' },
    --   })

    -- Find installed visual studio version(s) and add their compilation
    -- environment command prompts to the menu
    -- was 'Microsoft Visual Studio/20*'. Check C: drive first (standard)
    for _, vsvers in
    ipairs(
        wezterm.glob('Microsoft Visual Studio/*', 'C:/Program Files (x86)')
    )
    do
        local year = vsvers:gsub('Microsoft Visual Studio/20*', '')
        table.insert(launch_menu, {
            label = 'x64 Native Tools VS ' .. year,
            args = {
                'cmd.exe',
                '/k',
                'C:/Program Files (x86)/'
                    .. vsvers
                    .. '/BuildTools/VC/Auxiliary/Build/vcvars64.bat',
            },
        })
    end
    -- do same search for  for L: driev
    for _, vsvers in
    ipairs(
        wezterm.glob('Microsoft Visual Studio/*', 'L:/Program Files (x86)')
    )
    do
        local year = vsvers:gsub('Microsoft Visual Studio/*', '')
        table.insert(launch_menu, {
            label = 'x64 Native Tools VS ' .. year,
            args = {
                'cmd.exe',
                '/k',
                'L:/Program Files (x86)/'
                    .. vsvers
                    .. '/BuildTools/VC/Auxiliary/Build/vcvars64.bat',
            },
        })
    end

    -- add to the config
    config.launch_menu = launch_menu
end -- end of windows exclusive launch menu

-- add using vscode command line tools by hand
--   table.insert(launch_menu, {
--                   label = 'vcvars2015',
--
--                   args = {'cmd.exe', '/k' ,
--                           "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\vcvarsall.bat",
--                           'amd64' },
--   })




return config
