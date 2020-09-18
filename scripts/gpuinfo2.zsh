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
	sleep 3
	new
	[[ $tempnew != $tempold || $infonew != $infoold ]] && \
		<<< "%{F$gpuinfotempcolor}%{T$gpuinfotempfonticon}$gpuinfotempicon%{T-}%{F-}${tempnew} ${infonew} " >| /tmp/gpuinfo
		polybar-msg hook gpuinfo 2 > /dev/null
		infoold=$infonew
		tempold=$tempnew
		val
}

new ()
{
	scope="$(nvidia-settings -q ThermalSensorReading -q GPUUtilization)"
	tempnew=${$(grep -E "*Reading.*thermalsensor:0]):.*" <<< $scope)[-1]//./}"%{F$gpuinfotempcolor}%{T$gpuinfotempfonticon2}$gpuinfotempicon2%{T-}%{F-}"
	#infonew=${${${$(grep -E "Attribute.*GPUUtilization.*[gpu:0].*" <<< $scope)[4,5]//graphics=/"%{F$gpuinfousagecolor}%{T$gpuinfousagefonticon}$gpuinfousageicon%{T-}%{F-}  "}//memory=/"%{F$gpuinfomemorycolor}%{T$gpuinfomemoryfonticon}$gpuinfomemoryicon%{T-}%{F-} "}//,/%}
	infonew="\
	"${${$(grep -E "Attribute.*GPUUtilization.*[gpu:0].*" <<< $scope)[5]//memory=/"%{F$gpuinfomemorycolor}%{T$gpuinfomemoryfonticon}$gpuinfomemoryicon%{T-}%{F-} "}//,/%}" \
	"${${$(grep -E "Attribute.*GPUUtilization.*[gpu:0].*" <<< $scope)[4]//graphics=/"%{F$gpuinfousagecolor}%{T$gpuinfousagefonticon}$gpuinfousageicon%{T-}%{F-} "}//,/%}"\
	" 
	
}
#  
