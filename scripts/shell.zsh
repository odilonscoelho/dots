#!/bin/zsh

# Import colors variables
. $path_colors/colors.zsh
se ()
{
	test "$@" && <<< $(bg 7;fg 16; echo " VERDADEIRO ") || <<< $(bg 1;fg 16; echo "   FALSO    ")
}
bg ()
{
	tput setab $@
}
fg ()
{
	tput setaf $@
}
alias dots="$path_dots"
alias dots.scripts="$path_scripts"
alias dots.temas="$path_colors"
alias dots.polybar="$path_polybar"
alias pacinstall="sudo pacman -S"
alias pacinstalled="sudo pacman -Qe"
alias pacremove="sudo pacman -R"
alias pacremovecomplete="sudo pacman -Rsn"
alias pacorfaos="sudo pacman -Qdt |awk {'print $1'}"
alias aurinstalled='sudo pacman -Qm'
alias aursearch='yay -Ss'
alias aurinstall='yay -S'
alias aurremove='yay -R'
alias aurremovecomplete='yay -Rsn'
alias fetch='clear;{wq fetch quadro 11};{wq colorfetch}'
alias equalizer='pulseaudio-equalizer enable'
alias ls='ls --color=auto'
declare -x socket="/tmp/mpvsocket"
### Variáveis para rótulos da polybar ###
##### VOLUME PULSE AUDIO
declare -x volumecolor=$foreground
declare -x volumecolorsuffix=$color2
declare -x volumefontsuffix=9
declare -x volumesuffix="蓼"
declare -x volumelabel="%{F${volumecolorsuffix}} %{T${volumefontsuffix}} $volumesuffix %{T- F-}"
##### CALENDAR
declare -x calendarcolor=$foreground
declare -x calendarcolorprefix=$color2
declare -x calendarfontprefix=9
declare -x calendarprefix=""
declare -x calendarfontlabeldate=8
declare -x calendarfontlabelhour=9
declare -x calendarfontlabelday=2
###### WEATCHER
declare -x weatchercolor=$foreground
declare -x weatcherfonticon=2
declare -x weatchercoloricon=$color11
##### TEMP CPU
declare -x temperaturecpucolor=$foreground
declare -x temperaturecpucoloricon=$color9
declare -x temperaturecpuicon=""
declare -x temperaturecpufonticon=2
##### CPU
declare -x cpucolor=$foreground
declare -x cpucoloricon=$color9
declare -x cpuicon=""
declare -x cpufonticon=11
##### XKEYBOARD
declare -x xkeyboardcolor=$foreground
declare -x xkeyboardcoloricon=$color12
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
declare -x memorycoloricon=$color10
declare -x memoryicon="﬙"
declare -x memoryfonticon=11
####### GPU
declare -x gpuinfocolor=$foreground
declare -x gpuinfomemorycolor=$color14
declare -x gpuinfotempcolor=$color14
declare -x gpuinfousagecolor=$color14
declare -x gpuinfomemoryicon="﬙"
declare -x gpuinfotempicon=""
declare -x gpuinfotempicon2="ºC"
declare -x gpuinfousageicon=""
declare -x gpuinfomemoryfonticon=3
declare -x gpuinfotempfonticon=2
declare -x gpuinfotempfonticon2=1
declare -x gpuinfousagefonticon=2
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
declare -x mprefixcolor=$color11
declare	-x mprefixfont=6
declare	-x mprefixicon=""
declare -x mytcolor=$color1
declare	-x mytfont=6
declare	-x myticon=""
declare -x mytlabel="%{T${mytfont}}%{F${mytcolor}}  $myticon  %{T-}%{F-}"
declare -x mplistcolor=$color2
declare	-x mplistfont=6
declare	-x mplisticon=""
declare -x mplistlabel="%{T${mplistfont}}%{F${mplistcolor}}  $mplisticon  %{T-}%{F-}"
declare -x msavecolor=$color5
declare	-x msavefont=6
declare	-x msaveicon=""
declare -x msavelabel="%{T${msavefont}}%{F${msavecolor}}  $msaveicon  %{T-}%{F-}"
declare -x mremovecolor=$color4
declare	-x mremovefont=6
declare	-x mremoveicon=""
declare -x mremovelabel="%{T${mremovefont}}%{F${mremovecolor}}  $mremoveicon  %{T-}%{F-}"
declare -x msfcolor=$color9
declare	-x msffont=6
declare	-x msficon=""
declare -x msflabel="%{T${msffont}}%{F${msfcolor}}  $msficon  %{T-}%{F-}"
declare -x mprevcolor=$color10
declare	-x mprevfont=6
declare	-x mprevicon=""
declare -x mprevlabel="%{T${mprevfont}}%{F${mprevcolor}}  $mprevicon  %{T-}%{F-}"
declare -x mplaycolor=$color1
declare	-x mplayfont=6
declare	-x mplayicon=""
declare -x mplaylabel="%{T${mplayfont}}%{F${mplaycolor}}  $mplayicon  %{T-}%{F-}"
declare -x mnextcolor=$color12
declare	-x mnextfont=6
declare	-x mnexticon=""
declare -x mnextlabel="%{T${mnextfont}}%{F${mnextcolor}}  $mnexticon  %{T-}%{F-}"
