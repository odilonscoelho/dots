#!/bin/zsh

path_icons="$HOME/.icons/oomox-1584k"

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
			elif [[ -n $(find $path_icons/**/$i.*) ]]; then
				icon="$(find $path_icons/**/$i.*|sed -n '1p')"
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
