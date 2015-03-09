import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders

myLayoutHook = avoidStruts (tall ||| twoTall ||| threeTall ||| noBorders threeTall ||| noBorders Full)
               where
                  tall      = Tall 1 (1/100) (1/2)
                  twoTall   = Tall 2 (1/100) (1/2)
                  threeTall = Tall 3 (1/100) (1/2)

main = xmonad defaultConfig
              { manageHook         = manageDocks <+> manageHook defaultConfig
              , terminal           = "urxvt"
              , borderWidth        = 2
              , normalBorderColor  = "#eee8d7"
              , focusedBorderColor = "#168dcc"
              , layoutHook         = myLayoutHook
              , handleEventHook    = ewmhDesktopsEventHook
              , startupHook        = ewmhDesktopsStartup
              }
