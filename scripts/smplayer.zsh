#!/bin/zsh
smswpf ()
{
	smplayer -send-action show_preferences &
}
smopfl ()
{
	smplayer -send-action open_file &
}
smopdir ()
{
	smplayer -send-action open_directory &
}
smurl ()
{
	smplayer -send-action open_url &
}
smswpl ()
{
	smplayer -send-action show_playlist &
}
smplopn ()
{
	smplayer -send-action pl_open &
}
smhdrt ()
{
	smplayer -send-action restore/hide &
}
smstop ()
{
	smplayer -send-action stop &
}
smplrmall ()
{
	smplayer -send-action pl_remove_all &
}
smps ()
{
	smplayer -send-action pause &
}
smpv ()
{
	smplayer -send-action play_prev &
}
smnt ()
{
	smplayer -send-action play_next &
}
smpy ()
{
	smplayer -send-action play &
}
smplpy ()
{
	smplayer -send-action pl_play &
}

smaddpl ()
{
	[[ -z $@ ]] && \
		{ nohup smplayer -add-to-playlist $(xclip -sel clipboard -o) >/dev/null & } || \
		smplayer -add-to-playlist "$@" &
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

smlt () #questionavel
{
	smplayer ${(f)"$(wq lt $1)"}
}

mplt () #questionavel
{
	mpv ${(f)"$(wq lt $1)"}
}

smltdt () #questionavel
{
	smplayer ${(f)"$(sed -E 's/.$//g' <<< ${(f)"$(sed -E 's/.[0-9]{4}\/.*\:[0-9]{2}$//g' <<< "$(wq ltdt $1)")"})"}
}

mpltdt () #questionavel
{
	mpv ${(f)"$(sed -E 's/.$//g' <<< ${(f)"$(sed -E 's/.[0-9]{4}\/.*\:[0-9]{2}$//g' <<< "$(wq ltdt $1)")"})"}
}

mpsf ()
{
	base="$(wq sf)" && nohup mpv ${(s:|:)base} &>/dev/null &
}

smsf ()
{
	base="$(wq sf)" && nohup smplayer ${(s:|:)base} &>/dev/null &
}

smsfaddpl ()
{
	base="$(wq sf)" && nohup smplayer ${(s:|:)base} &>/dev/null &
}

mpgsf ()
{
	base="$(wq sf)" && nohup mpg123 -CvZ "${(s:|:)base}" &>/dev/null &
}
