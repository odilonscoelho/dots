#!/bin/zsh
#===============| AUTOMAÇÕES |===============
cl ()
{
	for i in $@;
	do
		echo "$i:"
	done
}
mn ()
{
	. "$path_colors/colors.zsh"
    . "$path_scripts/shell.zsh"
	base.cmd
	declare -x sock=/tmp/mpvsocket
	if zsh -c "`yad \
  	--listen \
  	--button=yad-close\
	--form --title="wq mn >" --focus-field=1 \
	--columns=1 --separator="" --entry-text='' --completion \
	--text-align=center --geometry=600x80 --borders=25 --regex-search \
  	--field='':CE "$(</tmp/cmd)"\
	--field="":FBTN 'zsh -c %1' \
	--field=" clr":FBTN '@echo 1:' \
	--field="":LBL '' \
	--button=" browser":"qutebrowser -R --target window youtube.com.br" \
	--button=" rofi":'wq rofi.drun &>/dev/null &' \
	--button=" kitty":"kitty" \
	--button=" cmd":'wq cmd' \
	--button=" mpy":'wq mpy' \
	--button=" calc":'wq cca' \
	--button=" playlist":'mp list' \
	--align=center\
  	--buttons-layout=spread\
	--complete=all`";then
  #[[ -n $comando ]]&& <<< $comando >> $HOME/.zhistory
  # mn
	else
  	exit 0
	fi
}
cmd ()
{
	. "$path_colors/colors.zsh"
	. "$path_scripts/functions.zsh"
	base.cmd
	yad --geometry=800x50 \
	--no-buttons --separator=" " \
	--borders=12 --form --complete=all \
	--field="":CE "$(</tmp/cmd)"|read coleta
	if [[ -n $coleta ]];then
		<<< $coleta >> $HOME/.zhistory
		zsh -c "$coleta" &
	else
		exit
	fi
}
base.cmd ()
{
	rm /tmp/cmd
	< hdbkp/dots/scripts/shell.zsh|\
	grep -E "declare"|sed 's/\=.*//g;;s/declare -x//g;s/^/\!\$/g;s/ //g' >> /tmp/cmd
	< $HOME/.zhistory|sed 's/^/!/g'|sort -R --unique >> /tmp/cmd &&
	ls /bin |sed 's/^/!/g' >> /tmp/cmd
	wq help >> /tmp/cmd
	}
shll ()
{
	nohup $($@) >/dev/null &
}
msg ()
{
	case $@ in
		traducao ) yad \
		--form --borders=5 --button=yad-ok --mouse --geometry=700x300 \
		--title "tradutor" --field=TRADUCAO:TXT "$(trans -b "$(xclip -s xclipboard -o)")";;
		* ) yad --form --button=yad-ok --borders=5 --mouse --geometry=700x300 --title "Information:" --field=CONTEUDO:TXT "$@";;
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
#================| SELEÇÃO DE ARQUIVOS |====================
sf ()
{
	if [[ -z $@ ]];then
		yad --file --multiple --geometry 500x600
	else
		cd "$@" && yad --file --multiple --geometry 500x600
	fi
}
#================| SESSÂO SELEÇÃO DE ARQUIVOS |====================


#================| SESSÂO LISTAS |====================
