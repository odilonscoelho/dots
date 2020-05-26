#!/bin/zsh
gpuinfo ()
{
	case $@ in
		start ) gpuinfo.start > /dev/null &;;
		stop ) gpuinfo.stop;;
	esac
}

gpuinfo.start ()
{
	wq notificatime "gpuinfo Start!" "50000" &
	infoold=""
	tempold=""
	$(val)
	start
}

gpuinfo.stop ()
{
	wq notificatime "gpuinfo Stop!" "50000" &
	kill $(ps aux |grep -E '[w]q gpuinfo start$'|awk {'print $2'})
	polybar-msg hook gpuinfo 1 > /dev/null &
}

val ()
{
	sleep 10
	new
	[[ $tempnew != $tempold || $infonew != $infoold ]] && \
		<<< "${infonew}  ${tempnew}" >| /tmp/gpuinfo
		polybar-msg hook gpuinfo 2 > /dev/null
		infoold=$infonew
		tempold=$tempnew
		val || val
}

new ()
{
	scope="$(nvidia-settings -q all)"
	tempnew=${$(grep -E "*Reading.*thermalsensor:0]):.*" <<< $scope)[-1]//./}" ºC"
	infonew=${${${$(grep -E "Attribute.*GPUUtilization.*[gpu:0].*" <<< $scope)[4,5]//graphics=/"  "}//memory=/"﬙ "}//,/%}
	#<<< "$info $temperature" >| /tmp/gpuinfo
	#polybar-msg hook gpuinfo 2 > /dev/null &
	#sleep 5
	# new
}
#  
