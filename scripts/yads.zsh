#!/bin/zsh

#===============| AUTOMAÇÔES |===============
cl ()
{
	for i in $@;
	do
		echo "$i:"
	done
}

mn ()
{
	yad \
	--form --title="wq mn >" --focus-field=1 --quoted-output \
	--columns=1 --separator="" --entry-text='' --completion \
	--text-align=center --geometry=600x80 --borders=25 --regex-search \
	--field='':CE "$(</tmp/cmd)" \
	--field="":FBTN 'zsh -c %1' \
	--field=" clr":FBTN '@echo 1:' \
	--field="":LBL '' \
	--button=" browser":"qutebrowser -R --target window youtube.com.br" \
	--button=" rofi":'wq rofi.drun &>/dev/null &' \
	--button=" kitty":"kitty" \
	--button=" cmd":'wq cmd' \
	--button=" mpy":'wq mpy' \
	--button=" calc":'wq cca'
}

shll ()
{
	nohup $@ /dev/null &
}

cmd2 ()
{
	zsh -c \
	"$(yad --geometry=800x50 --no-buttons --separator="" --form --borders=25 --mouse --sticky \
	--field="":CE "$(<$path_proj/mn.zsh)")" &
}

cmd ()
{
	< $HOME/.zhistory |sort --stable --reverse --unique |sed 's/^/!/g' >| /tmp/cmd
	ls /bin |sed 's/^/!/g' >>| /tmp/cmd
	wq help >>| /tmp/cmd
	coleta=$(\
	yad --geometry=800x50 --no-buttons \
	--separator="" --form --borders=15 \
	--field="":CE "$(</tmp/cmd)")
	[[ -n $coleta ]] && echo "$coleta" >>| $HOME/.zhistory && zsh -c "$coleta" &
}


msg ()
{
		case $@ in
		traducao ) yad --borders=25 --mouse --geometry=700x700 --text="$(trans -b "$(xclip -s xclipboard -o)")" --wrap "traduzido";;
		* ) yad --borders=25  --mouse\
			--text="
		$@

					" &;;
	esac
}

#================| BSPWM | ======================
seletor4 ()
{
	yad --list --expand-column=0 --wrap \
	--column=ID --column=ICON --column=PROGRAMA --column=WORKSPACE\
	--selectable-labels --search-column=3 \
	--text-align=center --regex-search \
	--geometry=400x320 --separator=" " --borders=5 $@ &
}

#================| SESSÂO SELEÇÃO DE ARQUIVOS |====================
sf ()
{
	[[ -z $@ ]] && yad --file --multiple --geometry 500x600 ||	cd "$@" && yad --file --multiple --geometry 500x600
}
#================| SESSÂO SELEÇÃO DE ARQUIVOS |====================


#================| SESSÂO LISTAS |====================
