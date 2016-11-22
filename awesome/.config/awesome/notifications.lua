local naughty = require("naughty")

naughty.config.padding = 4
naughty.config.spacing = 4

naughty.config.defaults.timeout          = 3
naughty.config.defaults.screen           = 1
naughty.config.defaults.position         = "bottom_right"
naughty.config.defaults.margin           = 4
naughty.config.defaults.width            = 400
naughty.config.defaults.ontop            = true
naughty.config.defaults.font             = "Input 10"
naughty.config.defaults.icon_size        = 24
naughty.config.defaults.icon             = nil
naughty.config.defaults.fg               = '#fdf6e3'
naughty.config.defaults.bg               = '#6c71c4'
naughty.config.defaults.border_color     = '#268bd2'
naughty.config.defaults.border_width     = 0

naughty.notify({ text = "Notifications are working." })
