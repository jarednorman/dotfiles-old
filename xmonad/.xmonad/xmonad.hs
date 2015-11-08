import System.IO
import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run(spawnPipe)

myLayoutHook = avoidStruts (noBorders Full ||| Full)

main = do
  xmonad $ defaultConfig
           { manageHook         = manageDocks <+> manageHook defaultConfig
           , terminal           = "urxvt"
           , modMask            = mod4Mask
           , borderWidth        = 4
           , normalBorderColor  = "#fdf6e5"
           , focusedBorderColor = "#eee8d5"
           , layoutHook         = myLayoutHook
           , handleEventHook    = ewmhDesktopsEventHook
           , startupHook        = ewmhDesktopsStartup
           }
