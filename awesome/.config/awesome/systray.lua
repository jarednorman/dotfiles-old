local hostname = require('hostname')
local isLaptop = hostname() == "baburuman"

local wibox = require('wibox')

local systray = wibox.widget.systray()
if isLaptop then
  systray:set_base_size(28)
else
  systray:set_base_size(28)
end
return systray
