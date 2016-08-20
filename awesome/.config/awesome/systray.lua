local hostname = require('hostname')
local isLaptop = hostname() == "baburuman"

local wibox = require('wibox')

local systray = wibox.widget.systray()
if isLaptop then
  systray:set_base_size(24)
else
  systray:set_base_size(11)
end
return systray
