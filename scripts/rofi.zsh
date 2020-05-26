#!/bin/zsh
font="monofur for Powerline 12"
rofi.drun () {
	rofi \
	-combi-modi drun \
	-show drun \
	-font "monofur for Powerline 13" \
	-bw 0 \
	-location 0 \
	-terminal kitty \
	-columns 4 \
	-lines 10 \
	-show-icons \
	-width 45 \
	-padding 10 \
	-line-padding 10 \
	-combi-hide-mode-prefix
}

rofi.windows () {
	rofi modi window \
	-show window \
	-font "monofur for Powerline 13" \
	-bw 10 \
	-location 0 \
	-terminal kitty \
	-columns 3 \
	-lines 10 \
	-show-icons \
	-width 30 \
	-padding 10 \
	-line-padding 0

}

rofi.run () {
	rofi modi run \
	-show run \
	-font "monofur for Powerline 13" \
	-bw 10 \
	-location 0 \
	-terminal kitty \
	-columns 3 \
	-lines 10 \
	-show-icons \
	-width 30 \
	-padding 10 \
	-line-padding 0

}
