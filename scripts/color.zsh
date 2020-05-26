#!/bin/zsh
colorfull ()
{
bg=(tput setab $1)
fg=(tput setaf $1)
range=($( print {0..15} 16 ))
for ((f=1;f<=${#range};f++))
{
  for ((b=1;b<=${#range};b++))
  {
    $bg $range[$b];$fg $range[$f] ;echo -n " 冀 "; $bg 0; $fg 0
  }
  echo
}
$fg 0;$bg 0
}
color ()
{
bg=(tput setab $1)
fg=(tput setaf $1)
range=($( print {0..8} 16 ))
for ((f=1;f<=${#range};f++))
{
  for ((b=1;b<=${#range};b++))
  {
    $bg $range[$b];$fg $range[$f] ;echo -n " 冀 "; $bg 0; $fg 0
  }
  echo
}
$fg 0;$bg 0
}
