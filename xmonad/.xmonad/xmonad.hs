import System.IO

import Graphics.X11.ExtraTypes.XF86

import XMonad hiding (Tall)

import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog

import XMonad.Util.EZConfig
import XMonad.Util.Run(spawnPipe)

import XMonad.Layout.NoBorders
import XMonad.Layout.HintedTile

myLayoutHook = smartBorders $ avoidStruts (Full)

main = do
  xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
  xmonad $ ewmh defaultConfig
         { manageHook         = manageDocks <+> manageHook defaultConfig
         , layoutHook         = myLayoutHook
         , handleEventHook    = handleEventHook def <+> fullscreenEventHook  <+> docksEventHook
         , startupHook        = ewmhDesktopsStartup
         , modMask            = mod4Mask
         , terminal           = "st"
         , borderWidth        = 2
         , normalBorderColor  = "#C4C3C5"
         , focusedBorderColor = "#E013D0"
         , logHook = dynamicLogWithPP $ xmobarPP
                     { ppOutput          = hPutStrLn xmproc
                     , ppTitle           = xmobarColor "#775DFF" ""
                     , ppCurrent         = xmobarColor "#E013D0" ""
                     , ppVisible         = xmobarColor "#E1E1E2" ""
                     , ppHidden          = xmobarColor "#C4C3C5" ""
                     , ppHiddenNoWindows = xmobarColor "#89878B" ""
                     , ppLayout          = xmobarColor "#17AD98" ""
                     , ppSep             = " • "
                     }
         }
         `additionalKeys`
         [ ((0,        xF86XK_AudioLowerVolume ), spawn "pactl set-sink-volume 0 -5%")
         , ((0,        xF86XK_AudioRaiseVolume ), spawn "pactl set-sink-volume 0 +5%")
         , ((0,        xF86XK_AudioMute        ), spawn "pactl set-sink-mute 0 toggle")
         , ((0,        xF86XK_MonBrightnessUp  ), spawn "light -A 2")
         , ((0,        xF86XK_MonBrightnessDown), spawn "light -U 2")
         , ((mod4Mask, xK_b                    ), sendMessage ToggleStruts)
         ]
