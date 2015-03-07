import XMonad
import XMonad.Config.Xfce

main = xmonad xfceConfig
              { terminal = "urxvt"
              , borderWidth = 2
              }
