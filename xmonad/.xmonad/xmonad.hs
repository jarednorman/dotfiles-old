import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders

myLayoutHook = avoidStruts (Full ||| noBorders Full ||| tall ||| twoTall ||| threeTall ||| noBorders threeTall)
               where
                  tall      = Tall 1 (1/100) (1/2)
                  twoTall   = Tall 2 (1/100) (1/2)
                  threeTall = Tall 3 (1/100) (1/2)

main = xmonad defaultConfig
              { manageHook         = manageDocks <+> manageHook defaultConfig
              , terminal           = "urxvt"
              , borderWidth        = 2
              , normalBorderColor  = "#eee8d7"
              , focusedBorderColor = "#cb4b16"
              , layoutHook         = myLayoutHook
              , handleEventHook    = ewmhDesktopsEventHook
              , startupHook        = ewmhDesktopsStartup
              }
