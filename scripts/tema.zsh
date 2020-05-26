#!/bin/zsh

tema () {
case $1 in
	light*)
		eval theme='$'"$1[$2]"
		wal -l -f "$theme" --backend colorz
		notifica "Tema Alterado |Light";;
	dark*)
		eval theme='$'"$1[$2]"
		wal -f $theme --backend colorz
		notifica "Tema Alterado |Dark";;
	default*)
		eval theme='$'"$1[$2]"
		wal -f $theme --backend colorz
		notifica "Tema Alterado |Default";;
esac
}
notifica () {
. ~/.cache/wal/colors.sh
 dunstify -a notify-send -t 10000 \
-h string:bgcolor:$background \
-h string:fgcolor:$foreground \
-h string:frcolor:$color7 \
$1
}


dark=("sexy-trim-yer-beard"
"dkeg-raild"
"dkeg-scape"
"vscode"
"dkeg-mattd"
"base16-grayscale"
"sexy-pretty-and-pastel"
"dkeg-pastely"
"dkeg-branch"
"dkeg-raild"
"dkeg-blend"
"dkeg-coco"
"dkeg-blend"
"base16-embers"
"dkeg-bulb"
"dkeg-link"
"base16-dracula"
"gruvbox"
"monokai"
"base16-mocha"
"base16-xcode-dusk"
"base16-bespin"
"dkeg-fury"
"sexy-visibone-alt")

light=("base16-gruvbox-hard"
"base16-gruvbox-soft"
"base16-atelier-savanna"
"base16-atelier-florest"
"base16-grayscale"
"tempus_totus"
"base16-atelier-plateau"
"base16-atelier-estuary"
"base16-tomorrow"
"base16-cupcake"
"tempus_fugi"
"base16-atelier-savanna"
"tempus_past"
"github")

default=("base16-mellow-purple"
"tempus_autumn"
"dkeg-5725"
"sexy-swayr"
"base16-atelier-sulphurpool"
"base16-oceanicnext"
"sexy-pretty-and-pastel")

$@