Config { font = "xft:Office Code Pro:regular:size=11"
       , border = NoBorder
       , bgColor = "#fdf6e5"
       , fgColor = "#93a1a1"
       , position = TopW L 100
       , commands = [ Run StdinReader
                    ]
       , sepChar = "%"
       , template = " %StdinReader%"
       }
