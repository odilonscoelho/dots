#!/bin/zsh
# . $path_colors/colors.zsh
# font="mPlus Nerd Font light 13"
# ! State:           'bg',     'fg',     'bgalt',  'hlbg',   'hlfg'
# rofi.color-normal: #fdf6e3,  #002b36,  #eee8d5,  #586e75,  #eee8d5
# rofi.color-urgent: #fdf6e3,  #dc322f,  #eee8d5,  #dc322f,  #fdf6e3
# rofi.color-active: #fdf6e3,  #268bd2,  #eee8d5,  #268bd2,  #fdf6e3
# !                  'background', 'border'
# rofi.color-window: #fdf6e3,      #002b36
font="Nova Slim Book 21"
colornormal="$background,$color16,$background,$color12,$background"
colorwindow="$background,$color12,$color1"
rofi.drun () {
	rofi \
	-separator-style solid \
	-modi drun \
	-combi-modi drun \
	-show drun \
	-font "$font" \
	-bw 0 \
	-location 0 \
	-terminal kitty \
	-columns 1 \
	-lines 5 \
	-width 20 \
	-padding 50 \
	-line-padding 25 \
	-combi-hide-mode-prefix \
	-show-icons \
	-color-normal $colornormal \
	-color-window $colorwindow
}

rofi.drun.full () {
	rofi \
	-separator-style solid \
	-modi drun \
	-combi-modi drun \
	-show drun \
	-font "$font" \
	-bw 0 \
	-location 0 \
	-terminal kitty \
	-columns 1 \
	-padding 600 \
	-line-padding 25 \
	-combi-hide-mode-prefix \
	-show-icons \
	-color-normal $colornormal \
	-color-window $colorwindow \
	-fullscreen
}

rofi.combi ()
{
	rofi -combi-modi drun,run \
	-show combi \
	-font "$font" \
	-bw 5 \
	-location 0 \
	-terminal kitty \
	-columns 5 \
	-lines 10 \
	-width 60 \
	-padding 35 \
	-line-padding 5 \
	-combi-hide-mode-prefix \
	-show-icons \
	-color-normal $colornormal \
	-color-window $colorwindow
}

rofi.windows () {
	rofi modi window \
	-show window \
	-font "$font" \
	-bw 2 \
	-location 0 \
	-terminal kitty \
	-columns 1 \
	-lines 5 \
	-show-icons \
	-width 60 \
	-padding 60 \
	-line-padding 20 \
	-color-normal $colornormal \
	-color-window $colorwindow

}

rofi.run () {
	rofi modi run \
	-show run \
	-font $font \
	-bw 2 \
	-location 0 \
	-terminal kitty \
	-columns 1 \
	-lines 5 \
	-show-icons \
	-width 60 \
	-padding 60 \
	-line-padding 20 \
	-color-normal $colornormal \
	-color-window $colorwindow
}
