import System.IO
import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run(spawnPipe)
import XMonad.Hooks.EwmhDesktops

myLayoutHook = avoidStruts (noBorders Full ||| Full)

main = do
  xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
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
         , logHook = dynamicLogWithPP $ xmobarPP
                     { ppOutput          = hPutStrLn xmproc
                     , ppTitle           = xmobarColor "#2aa198" ""
                     , ppCurrent         = xmobarColor "#cb4b16" ""
                     , ppVisible         = xmobarColor "#586e75" ""
                     , ppHidden          = xmobarColor "#93a1a1" ""
                     , ppHiddenNoWindows = xmobarColor "#fdf6e5" ""
                     , ppLayout          = xmobarColor "#859900" ""
                     , ppSep             = " × "
                     }
         }
         `additionalKeys`
         [ ((0,        xF86XK_AudioLowerVolume ), spawn "pactl set-sink-volume 1 -5%")
         , ((0,        xF86XK_AudioRaiseVolume ), spawn "pactl set-sink-volume 1 +5%")
         , ((0,        xF86XK_AudioMute        ), spawn "pactl set-sink-mute 1 toggle")
         , ((0,        xF86XK_MonBrightnessUp  ), spawn "xbacklight +5")
         , ((0,        xF86XK_MonBrightnessDown), spawn "xbacklight -5")
         , ((0,        xF86XK_Explorer         ), spawn "xdotool key XF86AudioPlay")
         , ((mod4Mask, xK_b                    ), sendMessage ToggleStruts)
         ]
