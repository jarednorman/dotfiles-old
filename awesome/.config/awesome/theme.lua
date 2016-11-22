local hostname = require('hostname')
local isLaptop = hostname() == "akedoman"

theme = {}

-- This doesn't seem to work so...
theme.wallpaper_cmd = { "feh --bg-scale ~/.wallpaper.jpg" }
-- I'll just do this:
io.popen(theme.wallpaper_cmd[1])

theme.font = "Terminus 8"

theme.border_width = 2
theme.border_normal = "#586e75"
theme.border_focus  = "#268bd2"
theme.border_marked = "#dc322f"

theme.fg_normal     = "#657b83"
theme.bg_normal     = "#eee8d5"
theme.bg_systray    = theme.bg_normal

theme.fg_focus      = "#fdf8d5"
theme.bg_focus      = "#268bd2"

theme.fg_urgent     = "#fdf8d5"
theme.bg_urgent     = "#cb4b16"

theme.fg_minimize   = "#93a1a1"
theme.bg_minimize   = "#002b36"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=2:tabstop=2:softtabstop=2:textwidth=80
