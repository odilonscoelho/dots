#!/bin/zsh
se ()
{
	test ${@} && testSucess || testError
}
testSucess ()
{
	bg 2;fg 16; tput bold; printf '%'$COLUMNS's' "$(for i in {1..$(($COLUMNS/7))}; do; echo -n " TRUE " ;done)"
}
testError ()
{
	bg 1;fg 16; tput bold; printf '%'$COLUMNS's' "$(for i in {1..$(($COLUMNS/8))}; do; echo -n " FALSE " ;done)"
}
bg ()
{
	tput setab $@;
}
fg ()
{
	tput setaf $@;
}
retrate.mode ()
{
	base=$(wq sf)
	retrate.mode.aux
}
retrate.mode.aux ()
{
	for i in $base/**/*.jpg
	{
		clear
		imagem "$i"
		sleep 5
	}
	sleep 5
	clear
	retrate.mode.aux
}

imagem ()
{
	kitty +kitten icat "$@"
}

figtbsp ()
{
	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)
	echo "$tputFg" "$tputBold" "$(figlet -"$2"S "bspwm" -f smslant)" "$tputSGRO"

}

paste.rs ()
{
	local file=${1:-/dev/stdin}
	curl --data-binary @"$file" https://paste.rs/ 
}
