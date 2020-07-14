#!/bin/zsh

app.qute ()
{
	qutebrowser --target window "$@"
}

app.paste ()
{
	xclip -selection clipboard -o
}

app.csgo ()
{
	nohup steam steam://rungameid/730 /dev/null &
}

app.print.full ()
{
	if [[ -n $@  ]];then
		wq notificatime 5000 "screenshot $@.jpg" &&
		import -window root -screen "$@.jpg"
	else
		var="$(date +%d.%m\ %H.%M.%S).jpg"
		wq notificatime 5000 "screenshot $var" && sleep 0.5
		import -quality 100 -window root "$var"
	fi
}

app.print.cut ()
{
	import "$(yad --entry --title="screenshot =...")"
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