[section/base]
include-file = ~/.config/dots/modules.config.i3
include-file = ~/.config/dots/modules

[colors]
color0=${xrdb:color0:#222}
color1=${xrdb:color1:#222}
color2=${xrdb:color2:#222}
color3=${xrdb:color3:#222}
color4=${xrdb:color4:#222}
color5=${xrdb:color5:#222}
color6=${xrdb:color6:#222}
color7=${xrdb:color7:#222}
color8=${xrdb:color8:#222}
color9=${xrdb:color9:#222}
color10=${xrdb:color10:#222}
color11=${xrdb:color11:#222}
color12=${xrdb:color12:#222}
color13=${xrdb:color13:#222}
color14=${xrdb:color14:#222}
color15=${xrdb:color15:#222}
color16=${xrdb:color16:#222}
background = ${xrdb:background:#222}
foreground = ${xrdb:foreground:#222}
foreground-alt = ${xrdb:foreground:#222}


[bar/taskbar1]
font-0 = Arimo Nerd Font:Bold:size=8;4
font-1 = TerminessTTF Nerd Font:size=12;4
font-2 = Arimo Nerd Font:Bold:size=10;5

modules-right = i3
modules-left  = x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20  

monitor = ${file:/tmp/monitor1:LVDS1}
width = 100%
height = 30
override-redirect = false
fixed-center = true
scroll-up =  $(i3-msg move container workspace next_off_output, workspace next_on_output)
scroll-down = $(i3-msg move container workspace prev_off_output, workspace prev_on_output)
click-right =i3wm-wsnext
click-left = i3wm-wsprev
click-middle = taskbar.zsh launch
module-margin = 1
padding-right = 5
padding-left = 5
border-size = 0  
border-top-size = 10
border-bottom-size = 10
line-size = 1
border-color = ${colors.background}
background = ${colors.background}
foreground = ${colors.foreground}
bottom = false 
radius = 1
wm-name = i3
dpi-x = 168
dpi-y = 168
enable-ipc = true


[bar/dock]
font-0 = Arimo Nerd Font:Bold:size=8;4
font-1 = TerminessTTF Nerd Font:size=10;4
font-2 = TerminessTTF Nerd Font:size=14;6
font-3 = Arimo Nerd Font:Bold:size=12;5
font-4 = TerminessTTF Nerd Font:size=11;4

modules-right  = tube smpref file playlist stop play prev next volume
modules-left = cal uptimetv memoryramptv cputv1 temperaturecpu temperaturegpu rede eth-network wireless-network

monitor = ${file:/tmp/monitor1:LVDS1}
width = 100%
height = 30
override-redirect = false
fixed-center = true
scroll-up =  $(i3-msg move container workspace next_on_output, workspace next_on_output)
scroll-down = $(i3-msg move container workspace prev_on_output, workspace prev_on_output)
click-right = $(i3-msg workspace next_on_output)
click-left = $(i3-msg workspace prev_on_output)
click-middle = taskbar.zsh launch
module-margin = 1
padding-right = 8
padding-left = 8
border-size = 0  
border-top-size = 10
border-bottom-size = 10
line-size = 1
background = ${colors.background}
foreground = ${colors.foreground}
border-color = ${colors.background}
bottom = true
radius = 1
wm-name = i3wm
dpi-x = 168
dpi-y = 168
enable-ipc = true
;separator = ⏽
;tray-position = center
;tray-background = ${colors.background}
;tray-transparent = true
;tray-scale = 1.0
;tray-padding = 1
