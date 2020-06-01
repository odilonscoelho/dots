#!/bin/zsh
#PROJETO FETCH
#Inspirado no video do terminal root de como criar seu próprio fetch mas com alterações
logo () {
jp2a $dir/redondo.png --size=36x12
}
info() {
cat <<EOF

 $USER  $HOST

  $kernel
  $cpu
﬙  $mem
  $disk
  $uptime


EOF
}
logoprint () {
#echo "$($opcao)"
logo
}

kernel=$(uname -a|awk {'print $3,$1'})
uptime=$(uptime |awk {'print $3'}|sed 's/,//g')
disk=$(df -h /|awk {'print $5" Uso  / "$2"  "$4" Disponível"'}|sed -n 2'p')
mem=$(free -h |sed -n 2'p'|awk {'print $3" / "$2"  "$7" Disponível"'})
cpu=$(head /proc/cpuinfo|grep "model name"|awk {'print $4,$5,$6,$7,$8,$9,$10'})
#videoext=$(lspci |grep 3D|awk {'print $7,$8,$9'}|sed 's/]//g'|sed 's/\[//g')
#videoint=$(lspci |grep VGA|sed 's/.*: //g'|head -c 35)
dir=$HOME/hdbkp/dots/temas/logos

opcao=logo
logo=/tmp/logo.txt
text=/tmp/info.txt
echo "$(info)" > $text
echo "$(logo)" > $logo
clear
paste $logo $text



