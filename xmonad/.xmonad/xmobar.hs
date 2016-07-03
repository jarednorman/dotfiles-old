Config { font = "xft:Office Code Pro:medium:pixelsize=13"
       , border = NoBorder
       , bgColor = "#eee8d5"
       , fgColor = "#b0b0b0"
       , position = BottomSize L 100 29
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#b0b0b0>%d %B %Y</fc> <fc=#d0d0d0>%H:%M</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#fc6d24>%timer%</fc> %date% "
       }
