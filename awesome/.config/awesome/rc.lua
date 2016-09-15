-- Standard awesome library
local awful = require("awful")
awful.rules = require("awful.rules")
local wibox = require("wibox")
local beautiful = require("beautiful")
local vicious = require("vicious")

require("awful.autofocus")

require("errorhandling")

require("notifications")

local hostname = require('hostname')
local isLaptop = hostname() == "baburuman"

beautiful.init("~/.config/awesome/theme.lua")

local terminal
if isLaptop then
  terminal = "st -f 'Input:size=16'"
else
  terminal = "st -f 'Input:size=15'"
end

local modkey = "Mod4"

local layouts = {
  awful.layout.suit.max,
  awful.layout.suit.floating,
  awful.layout.suit.tile
}

-- Define a tag table which hold all screen tags.
local tags = {}
for s = 1, screen.count() do
  tags[s] = awful.tag({ "C", "R", "E", "E", "P", "Y" }, s, layouts[1])
end

-- Create a wibox for each screen and add it
local mywibox = {}
local mytaglist = {}
mytaglist.buttons = awful.util.table.join(
  awful.button({ }, 1, awful.tag.viewonly)
)

for s = 1, screen.count() do
  if isLaptop then
    mywibox[s] = awful.wibox({ position = "bottom", screen = s, height = "30" })
  else
    mywibox[s] = awful.wibox({ position = "bottom", screen = s, height = "33" })
  end

  local left_layout = wibox.layout.fixed.horizontal()
  mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons)
  left_layout:add(mytaglist[s])

  local right_layout = wibox.layout.fixed.horizontal()
  if s == 1 then
    right_layout:add(require('pomme'))
    right_layout:add(require('kbwidget'))
    right_layout:add(require('mpdwidget'))
    right_layout:add(require('datewidget'))
    right_layout:add(require('systray'))
  end

  -- Now bring it all together (with the tasklist in the middle)
  local layout = wibox.layout.align.horizontal()
  layout:set_left(left_layout)
  layout:set_right(right_layout)

  mywibox[s]:set_widget(layout)
end

globalkeys = awful.util.table.join(
  awful.key({ modkey,           }, "j", function ()
    awful.client.focus.byidx( 1)
    if client.focus then client.focus:raise() end
  end),
  awful.key({ modkey,           }, "k", function ()
    awful.client.focus.byidx(-1)
    if client.focus then client.focus:raise() end
  end),

  -- Layout manipulation
  awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
  awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
  awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),
  awful.key({ modkey,           }, "Tab", function ()
    awful.client.focus.history.previous()
    if client.focus then
      client.focus:raise()
    end
  end),

  -- Standard program
  awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal) end),
  awful.key({ modkey,           }, "q", awesome.restart),
  awful.key({ modkey, "Shift"   }, "q", awesome.quit),

  awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)    end),
  awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)    end),
  awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end),
  awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end),
  awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end),
  awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end),
  awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),

  awful.key({ modkey, "Control" }, "n", awful.client.restore),
  awful.key({ modkey,           }, "p", function () awful.util.spawn("dmenu_run") end),

  -- FIXME: Add screenshot something?
  -- awful.key({ }, "Print", function () awful.util.spawn("mpc toggle") end),
  awful.key({ }, "XF86MonBrightnessDown", function () awful.util.spawn("xbacklight -10") end),
  awful.key({ }, "XF86MonBrightnessUp", function () awful.util.spawn("xbacklight +10") end),
  awful.key({ }, "XF86AudioPlay", function () awful.util.spawn("mpc toggle") end),
  awful.key({ }, "XF86Explorer", function () awful.util.spawn("mpc toggle") end),
  awful.key({ }, "XF86MonBrightnessDown", function () awful.util.spawn("xbacklight -20") end),
  awful.key({ }, "XF86MonBrightnessUp", function () awful.util.spawn("xbacklight +20") end),
  awful.key({ }, "XF86AudioRaiseVolume", function () awful.util.spawn("pactl set-sink-volume 0 +5%") end),
  awful.key({ }, "XF86AudioLowerVolume", function () awful.util.spawn("pactl set-sink-volume 0 -5%") end),
  awful.key({ }, "XF86AudioMute", function () awful.util.spawn("pactl set-sink-mute 0 toggle") end)
)

clientkeys = awful.util.table.join(
  awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
  awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
  awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
  awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
  awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        )
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
  globalkeys = awful.util.table.join(globalkeys,
    -- View tag only.
    awful.key({ modkey }, "#" .. i + 9, function ()
      local screen = mouse.screen
      local tag = awful.tag.gettags(screen)[i]
      if tag then
        awful.tag.viewonly(tag)
      end
    end),
    -- Move client to tag.
    awful.key({ modkey, "Shift" }, "#" .. i + 9, function ()
      if client.focus then
        local tag = awful.tag.gettags(client.focus.screen)[i]
        if tag then
          awful.client.movetotag(tag)
        end
      end
    end)
  )
end

clientbuttons = awful.util.table.join(
  awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
  awful.button({ modkey }, 1, awful.mouse.client.move),
  awful.button({ modkey }, 3, awful.mouse.client.resize)
)

-- Set keys
root.keys(globalkeys)

-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
  -- All clients will match this rule.
  { rule = { },
    properties = { border_width = beautiful.border_width,
                   border_color = beautiful.border_normal,
                   focus = awful.client.focus.filter,
                   raise = true,
                   keys = clientkeys,
                   buttons = clientbuttons } },
  { rule = { class = "MPlayer" },
    properties = { floating = true } },
  { rule = { class = "pinentry" },
    properties = { floating = true } },
  { rule = { class = "gimp" },
    properties = { floating = true } },
  -- FIXME: Use this for default tags for things.
  -- Set Firefox to always map on tags number 2 of screen 1.
  -- { rule = { class = "Firefox" },
  --   properties = { tag = tags[1][2] } },
}

-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c, startup)
  -- Enable sloppy focus
  c:connect_signal("mouse::enter", function(c)
    if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
      and awful.client.focus.filter(c) then
      client.focus = c
    end
  end)

  if not startup then
    -- Put windows in a smart way, only if they do not set an initial position.
    if not c.size_hints.user_position and not c.size_hints.program_position then
      awful.placement.no_overlap(c)
      awful.placement.no_offscreen(c)
    end
  elseif not c.size_hints.user_position and not c.size_hints.program_position then
    -- Prevent clients from being unreachable after screen count change
    awful.placement.no_offscreen(c)
  end
end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

-- vim: filetype=lua:expandtab:shiftwidth=2:tabstop=2:softtabstop=2:textwidth=80
