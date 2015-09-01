import System.IO
import XMonad
import qualified Data.Map as M
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run(spawnPipe)

myLayoutHook = avoidStruts (Full ||| noBorders Full ||| tall ||| twoTall)
               where
                  tall      = Tall 1 (1/500) (1/2)
                  twoTall   = Tall 2 (1/500) (1/2)

main = do
  xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
  xmonad $ defaultConfig
           { logHook = dynamicLogWithPP $ xmobarPP
                                          { ppOutput = hPutStrLn xmproc
                                          , ppTitle = xmobarColor "#2aa198" ""
                                          , ppCurrent = xmobarColor "#cb4b16" ""
                                          , ppVisible = xmobarColor "#586e75" ""
                                          , ppHidden = xmobarColor "#93a1a1" ""
                                          , ppHiddenNoWindows = xmobarColor "#fdf6e5" ""
                                          , ppLayout = xmobarColor "#859900" ""
                                          , ppSep = " × "
                                          }
           , manageHook         = manageDocks <+> manageHook defaultConfig
           , terminal           = "urxvt"
           , borderWidth        = 4
           , normalBorderColor  = "#fdf6e5"
           , focusedBorderColor = "#eee8d5"
           , layoutHook         = myLayoutHook
           , handleEventHook    = ewmhDesktopsEventHook
           , startupHook        = ewmhDesktopsStartup
           }
