Config { font = "xft:Input:bold:pixelsize=16"
       , border = NoBorder
       , bgColor = "#303030"
       , fgColor = "#586e75"
       , position = BottomSize L 100 29
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#b0b0b0>%d %B %Y</fc> <fc=#d0d0d0>%I:%M %p</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#b58900>%timer%</fc> %date% "
       }
