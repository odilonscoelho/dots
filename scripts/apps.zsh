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
	import -window root -screen print.png
}

app.print.cut ()
{
	import print.png
}

