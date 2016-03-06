import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders

myLayoutHook = avoidStruts (noBorders Full ||| Full)

main = do
  xmonad $ defaultConfig
           { manageHook         = manageDocks <+> manageHook defaultConfig
           , terminal           = "st"
           , modMask            = mod4Mask
           , borderWidth        = 2
           , normalBorderColor  = "#eee8df"
           , focusedBorderColor = "#fdf6e3"
           , layoutHook         = myLayoutHook
           , handleEventHook    = ewmhDesktopsEventHook
           , startupHook        = ewmhDesktopsStartup
           }
