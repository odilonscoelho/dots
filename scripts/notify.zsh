#!/bin/zsh
path_icons="$HOME/.icons/oomox-onedark_losaoall/actions/24"

ntf ()
{
	if [[ -z $@ ]]; then
		echo "Uso:
	São necessário pelo menos um argumento que será o conteúdo da notificação
	os argumentos são 'time, icon, msg', em qualquer ordem, sem a ncessidade de espeficicá-los
	por exemplo
		notificatime  5000 align-vertical-bottom 'msg'
	ou
		notificatime align-vertical-bottom 5000 'msg'"
	else
		for i in $@; do
			if [[ $i =~ [[:digit:]] ]]; then
				time="$i"
				shift
			elif [[ -n $(echo $path_icons/"$i".*) ]]; then
				icon="$i"
				shift
			else
				msg="$i"
				shift
			fi
		done				
	fi
	[[ -z $time ]] && time=5000
	[[ -z $icon ]] && icon=bell
	[[ -z $msg ]] && msg="$@"

	dunstify -t "$time" -i "$icon" "$msg"
}
