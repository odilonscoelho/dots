#!/bin/zsh
notifica ()
{
source $HOME/hdbkp/dots/temas/colors.zsh
dunstify -t 500000 -h string:bgcolor:"$background" -h string:fgcolor:"$foreground" -h string:frcolor:"$color7" "$@"
}
notificatime ()
{
source $HOME/hdbkp/dots/temas/colors.zsh
time=$1
shift
dunstify -t "$time" -h string:bgcolor:"$background" -h string:fgcolor:"$foreground" -h string:frcolor:"$color7" "$@"
}
