#!/bin/zsh
# powerline-daemon -q
# . /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh
. /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
# (cat ~/.cache/wal/sequences &)
# cat ~/.cache/wal/sequences
# . ~/.cache/wal/colors.sh
# source ~/.cache/wal/colors-tty.sh
# export path_proj=$HOME/hdbkp/dots
source "$HOME/hdbkp/dots/temas/colors.zsh"

declare -x socket="/tmp/mpvsocket"
declare -x wq_socket="mpvsocket"
alias dots="/home/losaoall/hdbkp/dots"
alias dots.scripts="/home/losaoall/hdbkp/dots/scripts/"
alias dots.temas="/home/losaoall/hdbkp/dots/temas"
alias dots.polybar="/home/losaoall/hdbkp/dots/polybar"

alias pacinstall="sudo pacman -S"
alias pacinstalled="sudo pacman -Qe"
alias pacsearch="sudo pacman -Ss"
alias pacremove="sudo pacman -R"
alias pacremovecomplete="sudo pacman -Rsn"
alias pacorfaos="sudo pacman -Qdt |awk {'print $1'}"
alias aurinstalled='sudo pacman -Qm'
alias aursearch='yay -Ss'
alias aurinstall='yay -S'
alias aurremove='yay -R'
alias aurremovecomplete='yay -Rsn'

alias omox='sh /home/losao/oomox/gui.sh'
alias fetch='clear;pfetch;{wq color}'

alias equalizer='pulseaudio-equalizer enable'
alias volume='pulsemixer'

alias taskbar.start='taskbar start'
alias taskbar.stop='taskbar stop'
alias taskbar.ids='taskbar id'

alias keyboard.br='setxkbmap -model abnt2 -layout br -variant abnt2'

traducao ()
{
	wq notifica "$(trans -e google -b "$(xclip -s clipboard -o)")" 50000
}

wqt ()
{
	[[ -z $1 ]] &&
		trans -b -e google $(xclip -sel clipboard -o) || \
		trans -b -e google <<< $1
}

proxyon ()
{
	export http_proxy=http://"$1":"$2"/
	export https_proxy=$http_proxy
	export socks_proxy=$http_proxy
	export ftp_proxy=$http_proxy
	export rsync_proxy=$http_proxy
	export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
}

corfont ()
{
	tput setaf $1
}

corbackground ()
{
	tput setab $1
}

cores ()
{
for i in {0..16}
{
for j in {16..0}
{ echo
corfont $i;corbackground $j; printf '%s' "background $j | foreground $i";corbackground 0;corfont 0
echo }
}
}

se ()
{
	test "$1" "$2" "$3" && \
		<<< $(corbackground 7;corfont 16; echo " VERDADEIRO ") || \
		<<< $(corbackground 1;corfont 16; echo "   FALSO    ")
}

stty -ixon
