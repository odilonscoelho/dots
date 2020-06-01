#!/bin/zsh
gpuinfo ()
{
	case $@ in
		start ) gpuinfo.start &> /dev/null &;;
		stop ) gpuinfo.stop;;
	esac
}

gpuinfo.start ()
{
	wq notificatime 5000 "gpuinfo Start!" &
	infoold=""
	tempold=""
	$(val) && $(val) || gpuinfo.start
}

gpuinfo.stop ()
{
	wq notificatime 5000 "gpuinfo Stop!" &
	kill $(ps aux |grep -E '[w]q gpuinfo start$'|awk {'print $2'})
	polybar-msg hook gpuinfo 1 > /dev/null &
}

val ()
{
	sleep 2
	new
	[[ $tempnew != $tempold || $infonew != $infoold ]] && \
		<<< "${infonew} %{T2}%{T-} ${tempnew}" >| /tmp/gpuinfo
		polybar-msg hook gpuinfo 2 > /dev/null
		infoold=$infonew
		tempold=$tempnew
		val
}

new ()
{
	scope="$(nvidia-settings -q all)"
	tempnew=${$(grep -E "*Reading.*thermalsensor:0]):.*" <<< $scope)[-1]//./}" %{T1}ºC%{T-}"
	infonew=${${${$(grep -E "Attribute.*GPUUtilization.*[gpu:0].*" <<< $scope)[4,5]//graphics=/"%{T2}%{T-}  "}//memory=/"%{T3}﬙%{T-} "}//,/%}
	#<<< "$info $temperature" >| /tmp/gpuinfo
	#polybar-msg hook gpuinfo 2 > /dev/null &
	#sleep 5
	# new
}
#  
