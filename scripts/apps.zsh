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
	[[ -n $@  ]] &&	import -window root -screen "$@" || import -window root -screen "$(date +%H:%M).jpg"
}

app.print.cut ()
{
	import print.png
}

