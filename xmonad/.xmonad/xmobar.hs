Config { font = "xft:Input:bold:pixelsize=16"
       , border = NoBorder
       , bgColor = "#322D34"
       , fgColor = "#89878B"
       , position = BottomSize L 100 29
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#C4C3C5>%d %B %Y</fc> <fc=#E1E1E2>%I:%M %p</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#D65407>%timer%</fc> %date% "
       }
