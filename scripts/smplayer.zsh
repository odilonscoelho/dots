#!/bin/zsh
mpsf ()
{
	base="$(wq sf)" && nohup mpv ${(s:|:)base} &>/dev/null &
}
mpy ()
{

	if [[ -z $@ ]]; then
		url="$(xclip -sel clipboard -o)"
		if [[ $url =~ "youtube.com" ]]; then
			new_class="YouTube"
			nohup mpv --x11-name="$new_class" $url /dev/null &
		else
			nohup mpv $url /dev/null &
		fi
	else
		url="$@"
		if [[ $(grep "youtube.com" $url) ]]; then
			new_class="YouTube"
			nohup mpv --x11-name="$new_class" $url /dev/null &
		else
			nohup mpv $url /dev/null &
		fi
	fi
}

mpys ()
{
	if [[ -z $@ ]]; then
		wq msg "Erro não é possível abrir o socket sem o nome
		por favor use wq mpys 'socket' onde socket é um nome que será
		usado para controlar os comandos do mpvci, caso passe mais
		argumentos serão interpretados como arquivos/url para execução"
	else
		if [[ $1 =~ "socket" && -n $2 ]];then
			socket=$2
			if [[ -z $3 ]];then
				url="$(xclip -sel clipboard -o)"

			else
				url="$3"
			fi
			if [[ $url =~ "youtube.com" ]]; then
				new_class="YouTube"
				mpv --x11-name="$new_class" $url --input-ipc-server=/tmp/$socket &>/dev/null
			else
				mpv $url --input-ipc-server=/tmp/$socket &>/dev/null
			fi
		else
			wq msg "Erro não é possível reconhecer os argumentos, use:
			wq mpys 'socket' 'url'
			se url for omitida, será usado o que estiver no xlip"
		fi
	fi
}
