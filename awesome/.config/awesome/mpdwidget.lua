local awful = require("awful")
local wibox = require("wibox")
local vicious = require('vicious')

local mpdwidget = wibox.widget.textbox()
vicious.register(
  mpdwidget,
  vicious.widgets.mpd,
  function (mpdwidget, args)
    if args["{state}"] == "Stop" then
      return " - "
    else
      return args["{Artist}"]..' - '..args["{Title}"]..' | '
    end
  end,
  10
)
mpdwidget:buttons(awful.util.table.join(
  awful.button({ }, 1, function() awful.util.spawn("mpc toggle") end)
))

return mpdwidget
