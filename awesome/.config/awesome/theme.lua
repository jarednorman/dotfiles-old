local hostname = require('hostname')
local isLaptop = hostname() == "baburuman"

theme = {}

-- This doesn't seem to work so...
theme.wallpaper_cmd = { "feh --bg-scale ~/.wallpaper.jpg" }
-- I'll just do this:
io.popen(theme.wallpaper_cmd[1])

theme.font = "Input Bold 10"

theme.bg_normal     = "#002b36"
theme.bg_focus      = "#002b36"
theme.bg_urgent     = "#002b36"
theme.bg_minimize   = "#002b36"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#93a1a1"
theme.fg_focus      = "#eee8d5"
theme.fg_urgent     = "#dc322f"
theme.fg_minimize   = "#93a1a1"

theme.border_width = 0

theme.border_normal = "#586e75"
theme.border_focus  = "#268bd2"
theme.border_marked = "#dc322f"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=2:tabstop=2:softtabstop=2:textwidth=80
