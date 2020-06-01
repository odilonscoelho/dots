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
		msg_erro_sintaxe_socket
	else
		if [[ $1 =~ "socket" && -n $2 ]];then
			socket="/tmp/$2"
			if [[ -z $3 ]];then
				url="$(xclip -sel clipboard -o)"

			else
				url="$3"
			fi
			if [[ $url =~ "youtube.com" ]]; then
				new_class="YouTube"
				mpv --x11-name="$new_class" "$url" --input-ipc-server=$socket &>/dev/null &
			else
				mpv "$url" --input-ipc-server=$socket &>/dev/null &
			fi
		else
			msg_erro_sintaxe_args
		fi
	fi
}
mpswpl ()
{
  if [[ -z $@ ]]; then
		msg_erro_sintaxe_socket
	else
    socket="/tmp/$@"
    socket_mpgo="$@"
    file=$(yad --list\
    --title="Lista de Reprodução $socket_mpgo" \
    --geometry=600x800\
    --columns 2\
    --search-column 2\
    --column=Position:NUM\
    --column=Title:TEXT\
    --dclick-action="wq mpgo socket $socket_mpgo"\
    ${(s:|:)"$(mpvc -S $socket --fullplaylist|sed 's/ /\|/;s/$/\|/')"})
  fi
}
mpurl () #mpurl 'socket' | por enquanto só via xclip
{
  cp -f "/home/losaoall/hdbkp/playlist/session.m3u" "/home/losaoall/hdbkp/playlist/session.bkp" &&
  if [[ -z $@ ]]; then
    msg_erro_sintaxe_socket
  else
    socket="/tmp/$@"
    playlist="$@"
    rm -f "/home/losaoall/hdbkp/playlist/$playlist.m3u"
    mpvc --socket "$socket" --save "/home/losaoall/hdbkp/playlist/"$playlist""
    url="/tmp/urltemp.m3u"
    wq app.paste >| "$url"
    mpvc -a "$url" --socket "$socket"
    rm -f "/home/losaoall/hdbkp/playlist/session.m3u"
    mpvc --socket "$socket" --save "/home/losaoall/hdbkp/playlist/session"
    wq mpgo socket porn "$(< hdbkp/playlist/session.m3u|wc -l)" &>/dev/null &
    wq mpswpl "$@"
    mpvc --socket "$socket" --save "/home/losaoall/hdbkp/playlist/"$playlist""
    #cp -f "/home/losaoall/hdbkp/playlist/session.m3u" "/home/losaoall/hdbkp/playlist/session.bkp" &&
    #cp -f "/home/losaoall/hdbkp/playlist/session.m3u" "/home/losaoall/hdbkp/playlist/$@.m3u" &&
  fi
}
mpgo ()
{
  if [[ -z $@ ]]; then
    msg_erro_sintaxe_socket
  else
    if [[ $1 =~ "socket" && -n $2 ]];then
      [[ ! -e /tmp/$2 ]]&& { msg_erro_socket_inexistente && exit 0 }||socket=/tmp/$2
			if [[ -z $3 ]];then
        alvo=$(yad --entry --title="Alvo")
      else
        alvo=$3
      fi
    else
      msg_erro_sintaxe_args
    fi
  fi
  mpvc -S $socket --tracknum $alvo
}
gerador.socket ()
{
  [[ -z $@  ]]&& wq msg "Erro 
  gerador.socket requer como arg
  o caminho da playlist, ou do arquivo
  por enquanto apenas com arquivos locais"
}
msg_erro_sintaxe_socket ()
{
  wq msg "
  Erro não é possível abrir o socket sem o nome
  por favor use:
      wq opção_wq socket 'nome do socket da sessão' args
  Onde socket é um nome que será usado para controlar os comandos
  via mpvc, caso passe argumentos posterioes ao socket esses serão
  interpretados como arquivos/urls para execução"
}
msg_erro_sintaxe_args ()
{
  wq msg "
  Erro não é possível reconhecer os argumentos, use:
    wq opção_wq socket 'socket' 'url/file/playlist'
  se url for omitida, será usado o que estiver no xlip"
}
msg_erro_socket_inexistente ()
{
  wq msg "
  Erro
  Socket não encontrado!"
}
