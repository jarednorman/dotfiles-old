Config { font = "xft:Input:bold:pixelsize=16"
       , border = NoBorder
       , bgColor = "#002b36"
       , fgColor = "#657b83"
       , position = BottomSize L 100 33
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#586e75>%d %B %Y, %I:%M %p</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#268bd2>%timer%</fc> %date% "
       }
