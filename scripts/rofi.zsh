#!/bin/zsh
. $path_colors/colors.zsh
# font="mPlus Nerd Font light 13"
font="Nova Slim Book 14"
colornormal="$background,$foreground,$color6,$color0,$foreground"
colorwindow="$background,$color1,$color1"
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
	-width 60 \
	-padding 25 \
	-line-padding 5 \
	-combi-hide-mode-prefix \
	-show-icons \
	-color-normal $colornormal \
	-color-window $colorwindow
	# -icon-theme /usr/share/icons/Breeze_Amber
}

	# -icon-theme=/usr/share/icons/mojave-ct/apps/128 \
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
