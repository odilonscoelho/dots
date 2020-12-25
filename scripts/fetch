#!/bin/zsh
#PROJETO FETCH
#Inspirado no video do terminal root de como criar seu próprio fetch mas com alterações
#gnutux.png 

bsp ()
{

	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)
	echo "$tputFg""$tputBold""$(jp2a $HOME/hdbkp/dots/temas/logos/bspwm2.png)""$tputSGRO"	

}

gnu ()
{

	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)
	echo "$tputFg""$(jp2a $HOME/hdbkp/dots/temas/logos/gnutux.png)""$tputSGRO"	

}

redondo () 
{

	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)
	echo "$tputFg""$tputBold""$(jp2a $HOME/hdbkp/dots/temas/logos/redondo.png --size=42x16)""$tputSGRO"

}

tux ()
{
	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)
	echo "$tputFg""$(jp2a $HOME/hdbkp/dots/temas/logos/tux.png --size=40x18)""$tputSGRO"	

}

tuX ()
{
	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)
	<<< "$tputFg""$(jp2a $HOME/hdbkp/dots/temas/logos/tux.png)""$tputSGRO"	

}

quadro () 
{
	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)	

	echo "$tputFg""$tputBold""$(jp2a $HOME/hdbkp/dots/temas/logos/quadro.png --size=40x16)""$tputSGRO"

}

info() {

	export tputText2=$(tput setaf $1)
	export tputText1=$(tput rev)
	export tputSGRO=$(tput sgr0)

	echo "$tputText2 $(printf '%64s' "$uptime") $(printf '%-2s' "") \
	\n$tputText1 $(printf '%64s' "$kernel") $(printf '%-2s' "") $tputSGRO\
	\n$tputText2 $(printf '%64s' "$cpu") $(printf '%-2s' "") \
	\n$tputText1 $(printf '%64s' "$videoext") $(printf '%-2s' "") $tputSGRO\
	\n$tputText2 $(printf '%64s' "$USER | $HOST") $(printf '%-2s' "")\
	\n$tputText1 $(printf '%64s' "$mem") $(printf '%-2s' "﬙") $tputSGRO\
	\n$tputText2 $(printf '%64s' "$disk") $(printf '%-2s' "") $tputSGRO"

}

figtbsp ()
{

	export tputSGRO=$(tput sgr0)
	export tputFg=$(tput setaf $1)
	export tputBold=$(tput bold)
	echo "$tputFg" "$tputBold" "$(figlet -"$2"S "bspwm" -f smslant)" "$tputSGRO"

}

base.info ()
{

	kernel=$(uname -a|awk {'print $3,$1'})
	uptime=$(uptime |awk {'print "Uptime "$3'}|sed 's/,//g')
	disk=$(df -h /|awk {'print $2" |     "$5'}|sed -n 2'p')
	mem=$(free -h |sed -n 2'p'|awk {'print $2" |   "$3'})
	cpu=$(head /proc/cpuinfo|grep "model name"|awk {'print $4,$5,$6,$7,$8'})
	videoext=$(lspci |grep VGA|awk {'print $7,$8,$9,$10,$11'}|sed 's/]//g'|sed 's/\[//g')

}

natal ()
{

	export tputSGRO=$(tput sgr0)
	export tputBold=$(tput bold)

	while true; do
		for i in {1..16}
		{
			base.info
			for x in {16..1}
			{

				figtbspArg1=$(( $x + 2 ))
				figtbspArg2=$(( $x + 4 ))
				gnuArg=$(( $x - $i + 2 ))
				optnArg=$(( $x - $i - 2 ))
				infoArg=$(( $x - $i + 3 ))


				if [[ $gnuArg -lt 16 ]]; then
					gnu $gnuArg
				else
					gnu $(( $gnuArg - 16 ))
				fi

				echo


				if [[ $figtbspArg1 -lt 16 ]]; then
					figtbsp $figtbspArg1 c
				else
					figtbsp $(( $figtbspArg1 - 16 )) c
				fi

				echo				

				sleep $1
				clear

			}
		}
		clear
	done

}

clear
if [[ $2 == "natal" ]]; then
	optn=$3
	[[ -z $4 ]] && { natal 5 } || { natal $4 }
else
	"$2" "$3"
	figtbsp "$4"
fi
