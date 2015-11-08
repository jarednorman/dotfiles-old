import System.IO
import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Config.Xfce

myLayoutHook = avoidStruts (noBorders Full ||| Full)

main = do
  xmonad $ xfceConfig
           { terminal           = "urxvt"
           , modMask            = mod4Mask
           , borderWidth        = 4
           , normalBorderColor  = "#fdf6e5"
           , focusedBorderColor = "#eee8d5"
           , layoutHook         = myLayoutHook
           }
