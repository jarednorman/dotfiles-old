import System.IO
import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Config.Xfce

myLayoutHook = avoidStruts (noBorders Full ||| Full)

main = do
  xmonad $ xfceConfig
           { terminal           = "st"
           , modMask            = mod4Mask
           , borderWidth        = 6
           , normalBorderColor  = "#eee8df"
           , focusedBorderColor = "#fdf6e3"
           , layoutHook         = myLayoutHook
           }
