#!/bin/zsh
notifica ()
{
dunstify -a notify-send -t 50000 \
-h string:bgcolor:$background \
-h string:fgcolor:$foreground \
-h string:frcolor:$color7 \
$1
}
notificatime ()
{
if [[ -z $2 ]];then
	time="50000000"
else
	time="$2"
fi
dunstify -a notify-send -t "$2" \
-h string:bgcolor:$background \
-h string:fgcolor:$foreground \
-h string:frcolor:$color7 \
$1
}
. $HOME/hdbkp/dots/temas/colors.zsh
