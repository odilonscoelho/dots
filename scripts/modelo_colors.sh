#!/bin/zsh
gencores ()
{
	base_file=$1
	unset cursor background foreground color0 color1 color2 color3 color4 color5 color6 color7 \
	color8 color9 color10 color 11 color12 color13 color14 color15 color16 color17 color18 color19 color20
	
	# O tema precisa vir no padrao do oomox ou xresouces '*color: #000000'
	eval $(< $base_file|sed 's/\ //g;s/\:/\=/g;s/^\*//g')
}

gencores cores.txt