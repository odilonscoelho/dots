#!/bin/zsh
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
for i in {0..8}
{
for j in {8..0}
{corfont $j;corbackground $i; <<< "b $i | f $j";corbackground 0;corfont 0}
}
}

se ()
{
	test "$@" && <<< $(corbackground 7;corfont 16; echo " VERDADEIRO ") || <<< $(corbackground 1;corfont 16; echo "   FALSO    ")
}


alias dots="$path_dots"
alias dots.scripts="$path_scripts"
alias dots.temas="$path_temas"
alias dots.polybar="$path_polybar"
alias pacinstall="sudo pacman -S"
alias pacinstalled="sudo pacman -Qe"
alias pacremove="sudo pacman -R"
alias pacremovecomplete="sudo pacman -Rsn"
alias pacorfaos="sudo pacman -Qdt |awk {'print $1'}"
alias aurinstalled='sudo pacman -Qm'
alias aursearch='yay -Ss'
alias aurinstall='yay -S'
alias aurremove='yay -R'
alias aurremovecomplete='yay -Rsn'
alias fetch='clear;pfetch;{wq color}'
alias equalizer='pulseaudio-equalizer enable'
# alias volume='pulsemixer'
alias ls='ls --color=auto'

declare -x socket="/tmp/mpvsocket"
declare -x wqsocket="mpvsocket"

