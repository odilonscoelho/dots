#!/bin/zsh
bar.up () {
<<< ${${(s: :)$(uptime)[3]}//,/}
}

bar.off () {
yad --form --text="Bye..." --borders=50  --geometry=600x250 \
--field=" SHUTDOWN ":FBTN '@poweroff' \
--field="  REBOOT  ":FBTN '@reboot'
}

baroffbkp () {
menuuptime=$(dialog --menu "Selecione uma opção" 0 0 0 \
1 "poweroff" \
2 "reboot" \
3 "tty" --stdout)

case $menuuptime in;
  1) "poweroff";;
  2) "reboot";;
  3) "pkill -9 -U $USER";;
esac
}

bar.relogio () {
hour=$(date +%H%M)
for (( i = 1; i <= 4; i++ )); do
  case `echo $hour |cut -c$i` in
   0)icons[$i]="";;
   1)icons[$i]="";;
   2)icons[$i]="";;
   3)icons[$i]="";;
   4)icons[$i]="";;
   5)icons[$i]="";;
   6)icons[$i]="";;
   7)icons[$i]="";;
   8)icons[$i]="";;
   9)icons[$i]="";;
  esac
done
echo "%{T4} %{T9}$icons[1]$icons[2]:$icons[3]$icons[4] "
}

bar.relogio.extenso () {
dayweek=$(date |awk {'print $1'})
date=$(date +%d%m)
for (( i = 1; i <= 4; i++ )); do
  case `echo $date |cut -c$i` in
   0)icons[$i]="";;
   1)icons[$i]="";;
   2)icons[$i]="";;
   3)icons[$i]="";;
   4)icons[$i]="";;
   5)icons[$i]="";;
   6)icons[$i]="";;
   7)icons[$i]="";;
   8)icons[$i]="";;
   9)icons[$i]="";;
  esac
done
echo "$icons[1]$icons[2]/$icons[3]$icons[4] %{T2}$dayweek %{T4}%{T-}"
}

bar.calendario () {
nohup xterm -geometry 42x19 -e 'dialog --stdout --calendar "Olá Losão hoje é" 2 37 "$(date +%d%m%y)"' &
}

bar.weatcher ()
{
  < /tmp/weatcher
}

bar.gpu ()
{
  < /tmp/gpuinfo
}

bar.relogiobkp () {
hour=$(date +%H%M)
for (( i = 1; i <= 4; i++ )); do
  case `echo $hour |cut -c$i` in
   0)icons[$i]="";;
   1)icons[$i]="";;
   2)icons[$i]="";;
   3)icons[$i]="";;
   4)icons[$i]="";;
   5)icons[$i]="";;
   6)icons[$i]="";;
   7)icons[$i]="";;
   8)icons[$i]="";;
   9)icons[$i]="";;
  esac
done
echo "%{T3} $icons[1]$icons[2]:$icons[3]$icons[4] "
}

barrelogio-extensobkp () {
dayweek=$(date |awk {'print $1'})
date=$(date +%d%m)
for (( i = 1; i <= 4; i++ )); do
  case `echo $date |cut -c$i` in
   0)icons[$i]="";;
   1)icons[$i]="";;
   2)icons[$i]="";;
   3)icons[$i]="";;
   4)icons[$i]="";;
   5)icons[$i]="";;
   6)icons[$i]="";;
   7)icons[$i]="";;
   8)icons[$i]="";;
   9)icons[$i]="";;
  esac
done
echo "$icons[1]$icons[2]/$icons[3]$icons[4] %{T2}$dayweek %{T3}"
}
