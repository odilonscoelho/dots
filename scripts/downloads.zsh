#!/bin/zsh

ddmc ()
{
	#youtube-dl -c -x --audio-quality 0 $(xclip -sel clipboard -o) --console-title
	while read line
	do
		youtube-dl -c -x --audio-quality 0 "$line" --console-title
	done < $1
}

dd ()
{
if [[ -n $1 && -n $2 && -n $3 && -n $4 ]];then
	case $1 in
		limit* ) youtube-dl -c "$4" --console-title --continue --limit-rate "$2"K;;
		url* ) youtube-dl -c "$2" --console-title --continue --limit-rate "$4"K;;
		* ) <<< "Há erros nos argumentos!!!"
	esac

elif [[ -n $1 && -n $2 && -z $3 && -z $4 ]];then
	case $1 in
		limit* ) youtube-dl -c "$(xclip -sel clipboard -o)" --console-title --continue --limit-rate "$2"K;;
		url* ) youtube-dl -c "$2" --console-title --continue --limit-rate 124K;;
	esac

elif [[ -n $1 && -n $2 && -n $3 && -z $4 ]];then
	case $1 in
		limit* ) <<< "Opa opção inválida, o argumento "$3" é limit ou url???!";;
		url* ) <<< "Opa opção inválida, o argumento "$3" é limit ou url???!";;
		* ) <<< "Opa opção inválida, o argumento "$1" é limit ou url???!";;
	esac

elif [[ -n $1 && -z $2 && -z $3 && -z $4 ]];then
	<<< "Opa opção inválida, o argumento "$1" é limit ou url???!"

elif [[ -z $1 && -z $2 && -z $3 && -z $4 ]];then
	youtube-dl -c "$(xclip -sel clipboard -o)" --console-title --continue --limit-rate 124K

else
	<<< "Opa opção inválida, algum argumento não especificado se é limit ou url???!"

fi

}

dd.lt ()
{
	while read line; do
		# dd url "$line" limit 10000
		youtube-dl -c "$line" --console-title --continue
		sleep 1
	done < $1
}
