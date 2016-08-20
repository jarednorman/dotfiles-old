local awful = require("awful")
local wibox = require("wibox")

local kbwidget = wibox.widget.textbox()

local layout = function()
  local f = io.open(os.getenv("HOME").."/.kb", "rb")
  local content = f:read("*all"):gsub("\n$", "")
  f:close()
  return content
end

kbwidget:set_text(layout().." | ")

kbwidget:buttons(awful.util.table.join(
  awful.button({ }, 1, function()
    local text = awful.util.pread("togglekb toggle"):gsub("\n$", "")
    kbwidget:set_text(text.." | ")
  end)
))

return kbwidget
