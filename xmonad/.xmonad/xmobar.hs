Config { font = "xft:Office Code Pro:medium:pixelsize=13"
       , border = NoBorder
       , bgColor = "#073642"
       , fgColor = "#586e75"
       , position = BottomSize L 100 29
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#839496>%d %B %Y</fc> <fc=#93a1a1>%H:%M</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#d33682>%timer%</fc> %date% "
       }
