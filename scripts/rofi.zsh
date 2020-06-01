#!/bin/zsh
. $path_colors/colors.zsh
font="mPlus Nerd Font light 13"
colornormal="$background,$foreground,$color0,$foreground,$background"
colorwindow="$background,$color1,$color5"
rofi.drun () {
	rofi \
	-modi drun \
	-combi-modi drun \
	-show drun \
	-font "$font" \
	-bw 2 \
	-location 0 \
	-terminal kitty \
	-columns 4 \
	-lines 10 \
	-show-icons \
	-width 60 \
	-padding 20 \
	-line-padding 5 \
	-combi-hide-mode-prefix \
	-color-normal $colornormal \
	-color-window $colorwindow
}

rofi.windows () {
	rofi modi window \
	-show window \
	-font "$font" \
	-bw 10 \
	-location 0 \
	-terminal kitty \
	-columns 3 \
	-lines 10 \
	-show-icons \
	-width 30 \
	-padding 10 \
	-line-padding 0 \
	-color-normal $colornormal \
	-color-window $colorwindow

}

rofi.run () {
	rofi modi run \
	-show run \
	-font $font \
	-bw 10 \
	-location 0 \
	-terminal kitty \
	-columns 3 \
	-lines 1 \
	-show-icons \
	-width 60 \
	-padding 80 \
	-line-padding 5 \
	-combi-hide-mode-prefix \
	-color-normal $colornormal \
	-color-window $colorwindow
}
