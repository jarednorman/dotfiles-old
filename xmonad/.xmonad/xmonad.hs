import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86

myLayoutHook = avoidStruts (noBorders Full ||| Full)

main = xmonad $ defaultConfig
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
       `additionalKeys`
       [ ((0, xF86XK_AudioLowerVolume), spawn "pactl set-sink-volume 1 -5%")
       , ((0, xF86XK_AudioRaiseVolume), spawn "pactl set-sink-volume 1 +5%")
       , ((0, xF86XK_AudioMute       ), spawn "pactl set-sink-mute 1 toggle")
       ]

