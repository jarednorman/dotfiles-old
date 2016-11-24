local vicious = require("vicious")
local wibox = require("wibox")

local batwidget = wibox.widget.textbox()

vicious.register(batwidget, vicious.widgets.bat, "$1$2% | ", 61, "BAT1")

return batwidget
