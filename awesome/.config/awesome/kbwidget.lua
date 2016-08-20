local awful = require("awful")
local wibox = require("wibox")

local kbwidget = wibox.widget.textbox()

local f = io.open(os.getenv("HOME").."/.kb", "rb")
local content = f:read("*all"):gsub("\n$", "")
f:close()

kbwidget:set_text(content.." | ")
kbwidget:buttons(awful.util.table.join(
  awful.button({ }, 1, function() awful.util.spawn("mpc toggle") end)
))

return kbwidget
