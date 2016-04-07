import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.EwmhDesktops
import qualified XMonad.StackSet as W
import XMonad.Layout.Grid

myLayoutHook = avoidStruts (Full ||| Grid)

myManageHook = composeAll
    [ className =? "Xfce4-notifyd" --> doF W.focusDown
    , manageDocks
    ]

main = do
  xmonad $ ewmh defaultConfig
         { manageHook         = myManageHook <+> manageHook defaultConfig
         , terminal           = "st"
         , modMask            = mod4Mask
         , borderWidth        = 0
         , normalBorderColor  = "#eee8df"
         , focusedBorderColor = "#fdf6e3"
         , layoutHook         = myLayoutHook
         , handleEventHook    = handleEventHook defaultConfig <+> fullscreenEventHook
         , startupHook        = ewmhDesktopsStartup
         }
         `additionalKeys`
         [ ((0,        xF86XK_AudioLowerVolume ), spawn "pactl set-sink-volume 0 -5%")
         , ((0,        xF86XK_AudioRaiseVolume ), spawn "pactl set-sink-volume 0 +5%")
         , ((0,        xF86XK_AudioMute        ), spawn "pactl set-sink-mute 0 toggle")
         , ((0,        xF86XK_MonBrightnessUp  ), spawn "xbacklight +5")
         , ((0,        xF86XK_MonBrightnessDown), spawn "xbacklight -5")
         , ((0,        xF86XK_Explorer         ), spawn "xdotool key XF86AudioPlay")
         , ((mod4Mask, xK_b                    ), sendMessage ToggleStruts)
         ]
