Config { font = "xft:Office Code Pro:regular:size=11"
       , border = NoBorder
       , bgColor = "#fdf6e5"
       , fgColor = "#93a1a1"
       , position = TopW L 100
       , commands = [ Run StdinReader
                    , Run Date "<fc=#586E75>%d %B %Y</fc>  ×  <fc=#073642>%H:%M</fc>" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ %date% "
       }
