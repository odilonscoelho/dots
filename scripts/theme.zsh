#!/bin/zsh
gencores ()
{
	color0=$(grep color0 $base_file|awk '{print $2}')
	color1=$(grep color1 $base_file|awk '{print $2}'|sed -n '1p')
	color2=$(grep color2 $base_file|awk '{print $2}')
	color3=$(grep color3 $base_file|awk '{print $2}')
	color4=$(grep color4 $base_file|awk '{print $2}')
	color5=$(grep color5 $base_file|awk '{print $2}')
	color6=$(grep color6 $base_file|awk '{print $2}')
	color7=$(grep color7 $base_file|awk '{print $2}')
	color8=$(grep color8 $base_file|awk '{print $2}'); [[ -z $color8 ]] && color8=$color0
	color9=$(grep color9 $base_file|awk '{print $2}'); [[ -z $color9 ]] && color9=$color1
	color10=$(grep color10 $base_file|awk '{print $2}'); [[ -z $color10 ]] && color10=$color2
	color11=$(grep color11 $base_file|awk '{print $2}'); [[ -z $color11 ]] && color11=$color3
	color12=$(grep color12 $base_file|awk '{print $2}'); [[ -z $color12 ]] && color12=$color4
	color13=$(grep color13 $base_file|awk '{print $2}'); [[ -z $color13 ]] && color13=$color5
	color14=$(grep color14 $base_file|awk '{print $2}'); [[ -z $color14 ]] && color14=$color6
	color15=$(grep color15 $base_file|awk '{print $2}'); [[ -z $color15 ]] && color15=$color7
	cursor=$(grep cursor $base_file|awk '{print $2}'); [[ -z $cursor ]] && cursor=$foreground
	background=$(grep background $base_file|awk '{print $2}')
	foreground=$(grep foreground $base_file|awk '{print $2}')
}

genrofi.rasi ()
{
		sed -i	's/background\: \#.*/background\: '$background'\;/;
			s/foreground\: \#.*/foreground\: '$foreground'\;/;
			s/active\-background\: \#.*/active\-background\: '$color3'\;/;
			s/urgent\-background\: \#.*/urgent-background\: '$color2'\;/;
			s/selected\-active\-background\: \#.*/selected\-active\-background\: '$color5'\;/;
	    s/selected\-normal\-background: \#.*/selected\-normal\-background\: '$color6'\;/;
	    s/selected\-normal\-foreground\: \#.*/selected\-normal\-foreground\: '$color3'\;/;
	    s/selected\-urgent-\background\: \#.*/selected\-urgent-\background\: '$color4'\;/' $rofi_file_rasi
}


genshell ()
{
	sed -i 's/background\=.*/background\=\"'$background'\"/;
			s/foreground\=.*/foreground\=\"'$foreground'\"/;
			s/cursor\=.*/cursor\=\"'$cursor'\"/;
			s/color0\=.*/color0\=\"'$color0'\"/;
			s/color1\=.*/color1\=\"'$color1'\"/;
			s/color2\=.*/color2\=\"'$color2'\"/;
			s/color3\=.*/color3\=\"'$color3'\"/;
			s/color4\=.*/color4\=\"'$color4'\"/;
			s/color5\=.*/color5\=\"'$color5'\"/;
			s/color6\=.*/color6\=\"'$color6'\"/;
			s/color7\=.*/color7\=\"'$color7'\"/;
			s/color8\=.*/color8\=\"'$color8'\"/;
			s/color9\=.*/color9\=\"'$color9'\"/;
			s/color10\=.*/color10\=\"'$color10'\"/;
			s/color11\=.*/color11\=\"'$color11'\"/;
			s/color12\=.*/color12\=\"'$color12'\"/;
			s/color13\=.*/color13\=\"'$color13'\"/;
			s/color14\=.*/color14\=\"'$color15'\"/;
			s/color15\=.*/color15\=\"'$color14'\"/' $shell_file
}

genresources ()
{
	sed -i 's/\*background\:.*/\*background\:'$background'/;
			s/\*foreground\:.*/\*foreground\:'$foreground'/;
			s/\*cursor\:.*/\*cursor\:'$cursor'/;
			s/\*color0\:.*/\*color0\:'$color0'/;
			s/\*color1\:.*/\*color1\:'$color1'/;
			s/\*color2\:.*/\*color2\:'$color2'/;
			s/\*color3\:.*/\*color3\:'$color3'/;
			s/\*color4\:.*/\*color4\:'$color4'/;
			s/\*color5\:.*/\*color5\:'$color5'/;
			s/\*color6\:.*/\*color6\:'$color6'/;
			s/\*color7\:.*/\*color7\:'$color7'/;
			s/\*color8\:.*/\*color8\:'$color8'/;
			s/\*color9\:.*/\*color9\:'$color9'/;
			s/\*color10\:.*/\*color10\:'$color10'/;
			s/\*color11\:.*/\*color11\:'$color11'/;
			s/\*color12\:.*/\*color12\:'$color12'/;
			s/\*color13\:.*/\*color13\:'$color13'/;
			s/\*color14\:.*/\*color14\:'$color14'/;
			s/\*color15\:.*/\*color15\:'$color15'/' $resources_file
}

genkitty ()
{
	echo "background  $background
foreground  $foreground
cursor $cursor
color0  $color0
color1  $color1
color2  $color2
color3  $color3
color4  $color4
color5  $color5
color6  $color6
color7  $color7
color8  $color8
color9  $color9
color10  $color10
color11  $color11
color12  $color12
color13  $color13
color14  $color14
color15  $color15" >| $kitty_file
}

gennotify ()
{
	background=$(echo $background|sed 's/\#//')
	foreground=$(echo $foreground|sed 's/\#//')
	color5=$(echo $color5|sed 's/\#//')
	sed -i 's/bubble\-background\-color \= .*/bubble-background-color = '$background'/;
	s/text-title-color = .*/text-title-color = '$color5'/;
	s/text-body-color = .*/text-body-color = '$foreground'/' $notify_file
	sleep 1
	notifyconf >/dev/null &
	sleep 1
	xdotool keydown alt &&
	sleep 0.25 &&
	xdotool keyup alt &&
	sleep 0.25 &&
	xdotool keydown space &&
	sleep 0.25 &&
	xdotool keyup space &&
	sleep 0.25 &&
	xdotool keydown Right &&
	sleep 0.25 &&
	xdotool keyup Right &&
	sleep 0.25 &&
	xdotool keydown Return &&
	sleep 0.25 &&
	xdotool keyup Return &&
	sleep 0.25 &&
	xdotool keydown space &&
	sleep 0.25 &&
	xdotool keyup space &&
	sleep 0.25 &&
	# bspc node -f -c &
	sleep 0.25 &&
	taskbar close $(</tmp/taskbar|grep --line-number Noti|cut -d: -f1)
	sleep 0.25
	taskbar close $(</tmp/taskbar|grep --line-number Noti|cut -d: -f1)
}

bsp ()
{
	bspc config focused_border_color $color1
	bspc config normal_border_color $color0
	bspc config active_border_color $color0
	bspc config presel_feedback_color $color0
	hsetroot -solid "$(echo "$background" |tr 'a-z' 'A-Z')"
	nitrogen --restore &
}
vars ()
{
	#rofi_file_rasi=$path_colors/colors-rofi-dark.rasi
	notify_file=/home/losaoall/.notifyosdconf/test.osdtheme
	shell_file=$path_colors/colors.zsh
	resources_file=$path_colors/.Xresources
	kitty_file=$path_colors/colors-kitty.conf
}

theme.run ()
{
	gencores &&
	genresources &&
	xrdb -I ~/.Xresources &&
	polybar-msg cmd restart &>/dev/null
	genshell
	genkitty
	bsp &&
	wq notificatime 5000 'Theme
	'${base_file/*\//}' aplicado!' &
}

theme.sel ()
{
	if [[ -z $@ ]]; then
		if {{ wq sf "$path_colors/themes" } >> $path_colors/history };then
			base_file="$(tail -1 < $path_colors/history)"
			theme.run
		else
			wq msg "Nenhum arquivo selecionado!\nsem alterações no theme atual!"
		fi
	else
		base_file="$@"
		tput setaf 10; tput setab 8; echo "$base_file selecionado!"
		theme.run &
	fi
	echo "$(tail -1 < $path_colors/history) aplicado com sucesso!"
}

vars
