local hostname = require('hostname')

local wibox = require('wibox')

local systray = wibox.widget.systray()

systray:set_base_size(12)

return systray
