#!/bin/zsh
#PROJETO FETCH
#Inspirado no video do terminal root de como criar seu próprio fetch mas com alterações
redondo () {
	tput setaf $fgalt; tput bold;echo "$(jp2a $HOME/hdbkp/dots/temas/logos/redondo.png --size=40x14)";tput sgr0;
}
quadro () 
{
	tput setaf $fgalt; tput bold;echo "$(jp2a $HOME/hdbkp/dots/temas/logos/quadro.png --size=40x16)";tput sgr0;
}
bubble ()
{
	tput setaf $fgalt; tput bold;echo "$(jp2a $HOME/hdbkp/dots/temas/logos/bubble.png --size=40x12)";tput sgr0;	
}
gnutux ()
{
	tput setaf $fgalt; tput bold;echo "$(jp2a $HOME/hdbkp/dots/temas/logos/gnutux.png --size=40x18)";tput sgr0;	
}
tux ()
{
	# tput setaf $fg; tput setab $bg; tput bold;echo "$(jp2a $HOME/hdbkp/dots/temas/logos/tux.png --size=40x20)";tput sgr0;	
	tput setaf $fgalt; tput bold;echo "$(jp2a $HOME/hdbkp/dots/temas/logos/tux.png --size=40x20)";tput sgr0;	

}
tux2 ()
{
	tput setaf $fgalt; tput bold;echo "$(jp2a $HOME/hdbkp/dots/temas/logos/tun.png --size=40x22)";tput sgr0;	
}
info() {
	echo "$tptext2 $(printf '%34s' "$uptime") $(printf '%-2s' "") \
	\n$tptext1 $(printf '%34s' "$kernel") $(printf '%-2s' "") $tpr\
	\n$tptext2 $(printf '%34s' "$cpu") $(printf '%-2s' "") \
	\n$tptext1 $(printf '%34s' "$videoext") $(printf '%-2s' "") $tpr\
	\n$tptext2 $(printf '%34s' "$USER | $HOST") $(printf '%-2s' "")\
	\n$tptext1 $(printf '%34s' "$mem") $(printf '%-2s' "﬙") $tpr\
	\n$tptext2 $(printf '%34s' "$disk") $(printf '%-2s' "") $tpr"
}
figt ()
{
	tput setaf $fgalt; tput bold;figlet -S "All Dots" -c -f standard.flf -w 45;tput sgr0;
}
[[ -z $3 ]] && fgalt=6 || fgalt=$3
tptext2=$(tput setaf $fgalt; tput bold;)
tptext1=$(tput rev;)
tpr=$(tput sgr0;)

kernel=$(uname -a|awk {'print $3,$1'})
uptime=$(uptime |awk {'print "Uptime "$3'}|sed 's/,//g')
disk=$(df -h /|awk {'print $2" |     "$5'}|sed -n 2'p')
mem=$(free -h |sed -n 2'p'|awk {'print $2" |   "$3'})
cpu=$(head /proc/cpuinfo|grep "model name"|awk {'print $4,$5,$6,$7,$8'})
videoext=$(lspci |grep VGA|awk {'print $7,$8,$9,$10,$11'}|sed 's/]//g'|sed 's/\[//g')

clear
$2
info
# wq colorfetch
# tput sgr0
figt

