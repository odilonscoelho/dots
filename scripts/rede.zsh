#!/bin/zsh
rede () {
con=($(head /proc/net/wireless |grep 000|awk {'print $1'}|sed 's/://g') $(head /proc/net/dev |grep -Ev 'wlp|lo|face|Inter'|awk {'print $1'}|sed 's/://g'))
for (( i = 1; i <= ${#con[@]}; i++ )); do
  ativ=$(grep $con[$i] /proc/net/dev|awk {'print $2'})
  [[ $ativ > 0 ]]&&\
    case $con[$i] in
      enp* ) icon[$i]="";;
      wlp* ) icon[$i]="";;
      tun* ) icon[$i]="";;
      modem* ) icon[$i]="";;
      * ) icon[$i]="<?>";;
    esac || continue
done
echo $icon[@]
}