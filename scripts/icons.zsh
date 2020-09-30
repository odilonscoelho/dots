#!/bin/zsh
### Variáveis para rótulos da polybar ###
##### VOLUME PULSE AUDIO
declare -x volumecolor=$foreground
declare -x volumecolorsuffix=$color4
declare -x volumefontsuffix=9
declare -x volumesuffix="蓼"
declare -x volumelabel="%{F${volumecolorsuffix}} %{T${volumefontsuffix}} $volumesuffix %{T- F-}"
##### CALENDAR
declare -x calendarcolor=$foreground
declare -x calendarcolorprefix=$color4
declare -x calendarfontprefix=9
declare -x calendarprefix=""
declare -x calendarfontlabeldate=10
declare -x calendarfontlabelhour=10
declare -x calendarfontlabelday=2
###### WEATCHER
declare -x weatchercolor=$foreground
declare -x weatcherfonticon=2
declare -x weatchercoloricon=$color11
##### TEMP CPU
declare -x temperaturecpucolor=$foreground
declare -x temperaturecpucoloricon=$color5
declare -x temperaturecpufonticon=9
declare -x temperaturecpuicon=""
##### CPU
declare -x cpucolor=$foreground
declare -x cpucoloricon=$color5
declare -x cpuicon=""
declare -x cpufonticon=11
##### XKEYBOARD
declare -x xkeyboardcolor=$foreground
declare -x xkeyboardcoloricon=$color13
declare -x xkeyboardicon=""
declare -x xkeyboardfonticon=3
##### REDE
declare -x ethcolor=$foreground
declare -x ethcoloricon=$color14
declare -x ethiconprefix=""
declare -x ethiconsuffix=""
declare -x ethfonticon=2
##### MEMORY
declare -x memorycolor=$foreground
declare -x memorycoloricon=$color3
declare -x memoryicon="﬙"
declare -x memoryfonticon=11
####### GPU
declare -x gpuinfocolor=$foreground
declare -x gpuinfomemorycolor=$color10
declare -x gpuinfotempcolor=$color10
declare -x gpuinfousagecolor=$color10
declare -x gpuinfomemoryicon="﬙"
declare -x gpuinfotempicon=""
declare -x gpuinfotempicon2="ºC"
declare -x gpuinfousageicon=""  #  &#xe901 爛 爛  
declare -x gpuinfosuffix=" %{F$color10}%{T1}%{R} Nvidia %{T-}%{R-} "
declare -x gpuinfomemoryfonticon=11
declare -x gpuinfotempfonticon=4
declare -x gpuinfotempfonticon2=1
declare -x gpuinfousagefonticon=5
####### TRANSLATE
declare -x translatefonticon=7
declare -x translatecoloricon="$color6"
declare -x translateicon="" #
declare -x translatelabel="%{T$translatefonticon}%{F$translatecoloricon} $translateicon %{T-}%{F-}"
####### WS
declare -x wsfonticon=2
declare -x wscoloricon="$color4"
declare -x wscolorbg=$background
declare -x wsicon="%{T$fonticon} "
#### UPTIME
#
declare -x uptimeicon=""
declare -x uptimecoloricon="$color11"
declare -x uptimefonticon="7"
declare -x uptimelabel="%{T$uptimefonticon}%{F$uptimecoloricon} $uptimeicon %{T-}%{F-}"
### PLAYER
declare -x mcolor=$color11
declare -x mopencolor=$color1
declare -x mopenfonticon=6
declare -x mopenicon=""
declare -x mopen="%{T$mopenfonticon}%{F$mopencolor}  $mopenicon  %{T-}%{F-}"
declare -x mclosecolor=$color11
declare -x mclosefonticon=6
declare -x mcloseicon=""
declare -x mclose="%{T$mclosefonticon}%{F$mclosecolor}  $mcloseicon  %{T-}%{F-}"
declare -x mprefixcolorbg=$color12
declare -x mprefixcolor=$color13
declare -x mprefixfont=7
declare -x mprefixicon=" " #
declare -x mytcolor=$color1
declare -x mytfont=6
declare -x myticon=""
declare -x mytlabel="%{T${mytfont}}%{F${mytcolor}}  $myticon  %{T-}%{F-}"
declare -x mplistcolor=$color2
declare -x mplistfont=6
declare -x mplisticon=""
declare -x mplistlabel="%{T${mplistfont}}%{F${mplistcolor}}  $mplisticon  %{T-}%{F-}"
declare -x msavecolor=$color5
declare -x msavefont=6
declare -x msaveicon=""
declare -x msavelabel="%{T${msavefont}}%{F${msavecolor}}  $msaveicon  %{T-}%{F-}"
declare -x mremovecolor=$color4
declare -x mremovefont=6
declare -x mremoveicon=""
declare -x mremovelabel="%{T${mremovefont}}%{F${mremovecolor}}  $mremoveicon  %{T-}%{F-}"
declare -x msfcolor=$color9
declare -x msffont=6
declare -x msficon=""
declare -x msflabel="%{T${msffont}}%{F${msfcolor}}  $msficon  %{T-}%{F-}"
declare -x mprevcolor=$color10
declare -x mprevfont=6
declare -x mprevicon=""
declare -x mprevlabel="%{T${mprevfont}}%{F${mprevcolor}}  $mprevicon  %{T-}%{F-}"
declare -x mplaycolor=$color1
declare -x mplayfont=6
declare -x mplayicon=""
declare -x mplaylabel="%{T${mplayfont}}%{F${mplaycolor}}  $mplayicon  %{T-}%{F-}"
declare -x mnextcolor=$color12
declare -x mnextfont=6
declare -x mnexticon=""
declare -x mnextlabel="%{T${mnextfont}}%{F${mnextcolor}}  $mnexticon  %{T-}%{F-}"
