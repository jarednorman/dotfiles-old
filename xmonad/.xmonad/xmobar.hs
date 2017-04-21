Config { font = "xft:Input:bold:pixelsize=16"
       , border = NoBorder
       , bgColor = "#000000"
       , fgColor = "#A7A5A8"
       , position = BottomSize L 100 33
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#6C696E>%d %B %Y, %I:%M %p</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#17AD98>%timer%</fc> %date%    "
       }
