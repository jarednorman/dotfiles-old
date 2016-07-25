Config { font = "xft:Office Code Pro:medium:size=10"
       , border = NoBorder
       , bgColor = "#073642"
       , fgColor = "#586e75"
       , position = BottomSize L 100 26
       , commands = [ Run StdinReader
                    , Run Com "/home/jared/bin/timer_status.sh" [] "timer" 50
                    , Run Date "<fc=#839496>%d %B %Y</fc>, <fc=#93a1a1>%I:%M %p</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ <fc=#6C71C4>%timer%</fc> %date%           "
       }
