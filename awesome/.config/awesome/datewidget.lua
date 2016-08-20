local wibox = require("wibox")
local vicious = require('vicious')

local datewidget = wibox.widget.textbox()
vicious.register(datewidget, vicious.widgets.date, "%d %B %Y, %I:%M%P ", 60)

return datewidget
