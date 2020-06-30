#!/bin/zsh
if ps aux|awk '{print $11}'|grep --silent '[p]icom'; then
  #echo "OK em execução"
  wq notificatime "Picom Stoped!" 5000
  pkill picom
else
  echo "PARADO não está em execução"
  wq notificatime "Picom Started!" 5000
  picom --config $path_dots/picom.conf -b --experimental-backends
fi
