#!/bin/zsh
colorfull ()
{
bg=(tput setab $1;)
fg=(tput setaf $1;)
rs=$(tput sgr0;)
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
colorfetch ()
{
  [[ -z $@ ]] && fgalt=6 || fgalt="$@"
  tpicon1=$(tput setaf $fgalt; tput bold;)
  bg=(tput setab $1)
  fg=(tput setaf $1)
  rs=$(tput sgr0;)
  range=($(print {0..8}))
  echo -n "$rs""$tpicon1" "$(printf '%-4s' {0..8})   ";
  echo
  for ((f=1;f<=${#range};f++))
  {
      echo -n "$(for ((b=1;b<=${#range};b++))
            {
              $bg $range[$b];$fg $range[$f] ;echo -n " 冀 "; $bg 0; $fg 0
            })$rs$tpicon1 $(printf '%-3s' $range[$f])$rs"
      echo
  }
  echo "$tpicon1----------------------------------------";
  range=($(print {8..16}))
  for ((f=1;f<=${#range};f++))
  {
      echo -n "$(for ((b=1;b<=${#range};b++))
            {
              $bg $range[$b];$fg $range[$f] ;echo -n " 冀 "; $bg 0; $fg 0
            })$rs$tpicon1 $(printf '%-3s' $range[$f])$rs"
      echo
  }
  echo -n "$rs""$tpicon1" "$(printf '%-4s' {8..16})   "
  echo
}
