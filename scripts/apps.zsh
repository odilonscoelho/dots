#!/bin/zsh

app.qute ()
{
	qutebrowser --target window "$@"
}

app.paste ()
{
	xclip -selection clipboard -o
}

app.pastex ()
{
	xclip -selection clipboard -o
}

app.csgo ()
{
	nohup steam steam://rungameid/730 /dev/null &
}

app.print.full ()
{
	if [[ -n $1  ]];then
		wq ntf "screenshot $@.jpg" 5000 
		import -window root -screen "$@.jpg"
	else
		var="$(date +%H%M%S).jpg"
		wq ntf 5000 "screenshot saved in ~/Pictures"
		sleep 0.5
		import -quality 100 -window root "$HOME/Pictures/$var"
	fi
}

app.print.cut ()
{
	file="$HOME/Pictures/$(yad --entry --title="screenshot =...")"
	import $file
}

app.kitty.reload.colors ()
{
	kitty @set-colors --all --configured $path_dots/kitty/kitty.conf
}

app.hset ()
{
	hsetroot -solid "$(echo "$background" |tr 'a-z' 'A-Z')"
}

app.mpv ()
{
	[[ -z $@ ]] && \
		{ nohup mpv --no-config "$(app.paste)" &>/dev/null & } || \
			{ nohup mpv --no-config "$@" &>/dev/null & }
}