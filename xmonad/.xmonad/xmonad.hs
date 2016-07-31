import System.IO
import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.EwmhDesktops
import qualified XMonad.StackSet as W
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run(spawnPipe)

myLayoutHook = avoidStruts Full

myManageHook = composeAll
    [ className =? "Xfce4-notifyd" --> doF W.focusDown
    , manageDocks
    ]

main = do
  xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
  xmonad $ ewmh defaultConfig
         { manageHook         = myManageHook <+> manageHook defaultConfig
         , terminal           = "st"
         , modMask            = mod4Mask
         , borderWidth        = 0
         , normalBorderColor  = "#F2F0F1"
         , focusedBorderColor = "#173B59"
         , layoutHook         = myLayoutHook
         , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
         , startupHook        = ewmhDesktopsStartup
         , logHook = dynamicLogWithPP $ xmobarPP
                     { ppOutput          = hPutStrLn xmproc
                     , ppTitle           = xmobarColor "#859900" ""
                     , ppCurrent         = xmobarColor "#CB4B16" ""
                     , ppVisible         = xmobarColor "#268BD2" ""
                     , ppHidden          = xmobarColor "#93A1A1" ""
                     , ppHiddenNoWindows = xmobarColor "#586E75" ""
                     , ppLayout          = xmobarColor "#93A1A1" ""
                     , ppSep             = " / "
                     }
         }
         `additionalKeys`
         [ ((0,        xF86XK_AudioLowerVolume ), spawn "pactl set-sink-volume 0 -5%")
         , ((0,        xF86XK_AudioRaiseVolume ), spawn "pactl set-sink-volume 0 +5%")
         , ((0,        xF86XK_AudioMute        ), spawn "pactl set-sink-mute 0 toggle")
         , ((0,        xF86XK_MonBrightnessUp  ), spawn "xbacklight +5")
         , ((0,        xF86XK_MonBrightnessDown), spawn "xbacklight -5")
         , ((0,        xF86XK_Explorer         ), spawn "mpc toggle")
         , ((0,        xF86XK_AudioPlay        ), spawn "mpc toggle")
         , ((mod4Mask, xK_b                    ), sendMessage ToggleStruts)
         , ((mod4Mask, xK_m                    ), spawn "st -f \"Office Code Pro:pixelsize=15:weight=normal\"")
         ]
