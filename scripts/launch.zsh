#!/bin/zsh
namewm=$(wmctrl -m |grep -i NAME|sed 's/.*: //')
export config=$path_polybar/config.$namewm
export bars=("dock") #altere para o nome suas bars ela precisam estar a posição bottom.
launch ()
{
pkill -9 polybar
if [[ -n $(wq monitores 2) ]]; then
	polybar -c $config $bars[1] -q -r &> /dev/null &
	polybar -c $config taskbar1 -q -r &> /dev/null &
	polybar -c $config taskbar2 -q -r &> /dev/null &
	polybar -c $config $bars[2] -q -r &> /dev/null &
else
	polybar -c $config $bars[1] -r &> /dev/null &
	polybar -c $config taskbar1 -r &> /dev/null &
fi
}
