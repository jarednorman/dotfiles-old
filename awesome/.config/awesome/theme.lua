local hostname = require('hostname')
local isLaptop = hostname() == "baburuman"

theme = {}

-- This doesn't seem to work so...
theme.wallpaper_cmd = { "xsetroot -solid '#002B36'" }
-- I'll just do this:
io.popen(theme.wallpaper_cmd[1])

if isLaptop then
  theme.font = "Terminus Medium 8"
else
  theme.font = "Input Medium 11"
end

theme.bg_normal     = "#002b36"
theme.bg_focus      = "#002b36"
theme.bg_urgent     = "#002b36"
theme.bg_minimize   = "#002b36"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#93a1a1"
theme.fg_focus      = "#eee8d5"
theme.fg_urgent     = "#dc322f"
theme.fg_minimize   = "#93a1a1"

if isLaptop then
  theme.border_width = 3
else
  theme.border_width = 0
end

theme.border_normal = "#002b36"
theme.border_focus  = "#586e75"
theme.border_marked = "#dc322f"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=2:tabstop=2:softtabstop=2:textwidth=80
