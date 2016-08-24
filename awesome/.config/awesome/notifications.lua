local naughty = require("naughty")

naughty.config.padding = 8
naughty.config.spacing = 8

naughty.config.defaults.timeout          = 3
naughty.config.defaults.screen           = 1
naughty.config.defaults.position         = "top_right"
naughty.config.defaults.margin           = 8
naughty.config.defaults.width            = 400
naughty.config.defaults.ontop            = true
naughty.config.defaults.font             = "Input Mono 10"
naughty.config.defaults.icon_size        = 24
naughty.config.defaults.icon             = nil
naughty.config.defaults.fg               = '#fdf6e3'
naughty.config.defaults.bg               = '#657b83'
naughty.config.defaults.border_color     = '#586e75'
naughty.config.defaults.border_width     = 2

naughty.notify({ text = "notification content" })
