import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders

myLayoutHook = avoidStruts (tall ||| noBorders Full)
               where tall = Tall 1 (1/100) (1/2)

main = xmonad defaultConfig
              { manageHook = manageDocks <+> manageHook defaultConfig
              , terminal   = "urxvt"
              , borderWidth = 3
              , logHook    = ewmhDesktopsLogHook
              , layoutHook = myLayoutHook
              , handleEventHook = ewmhDesktopsEventHook
              , startupHook = ewmhDesktopsStartup
              }
