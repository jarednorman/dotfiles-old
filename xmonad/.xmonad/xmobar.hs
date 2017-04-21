Config { font = "xft:Input:bold:pixelsize=16"
       , border = NoBorder
       , bgColor = "#181818"
       , fgColor = "#d8d8d8"
       , position = BottomSize L 100 33
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#585858>%d %B %Y, %I:%M %p</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#a1b56c>%timer%</fc> %date%   "
       }
