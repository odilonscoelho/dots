#!/bin/zsh

# Import colors variables
. $path_colors/colors.zsh

se ()
{
	test ${@} && testSucess || testError
}
testSucess ()
{
	bg 2;fg 16; tput bold; printf '%'$COLUMNS's' "$(for i in {1..$(($COLUMNS/7))}; do; echo -n "| TRUE " ;done)"
}
testError ()
{
	bg 1;fg 16; tput bold; printf '%'$COLUMNS's' "$(for i in {1..$(($COLUMNS/8))}; do; echo -n "! FALSE " ;done)"
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
####### TRANSLATE
declare -x translatefonticon=7
declare -x translatecoloricon=$color2
declare -x translateicon=""
declare -x translatelabel="%{T$translatefonticon}%{F$translatecoloricon} $translateicon %{T-}%{F-}"
####### WS
declare -x wsfonticon=7
declare -x wscoloricon="$color2"
declare -x wscolorbg="$color16"
# wslabel ()
# {
# 	<<< "%{F$wscoloricon}%{T5}%{T$wsfonticon}$(</tmp/taskbar.workspace)%{T5}%{T-}%{F-}"
# }
#%{B$wscolorbg}
#%{B-}

#### UPTIME
#
declare -x uptimeicon=""
declare -x uptimecoloricon="$color2"
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
declare -x mprefixcolor=$color11
declare	-x mprefixfont=7
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

#-------------------------------------------------------------------------------------------------------------------------
# Funções lst um ls bonitinho, formatado com ícones
lst ()
{
	pwdInitial="$PWD"
	lst.init $@
	lst.main |grep -Ev '^$'
	unset directory column recursive all pesquisa qtLabels limiteString limiter controller
	cd "$pwdInitial"
}

lst.init ()
{
	unset directory column recursive all pesquisa qtLabels limiteString limiter controller

	# Definição das cores de cada tipo de arquivo ou elemento do retorno; 
	colorIcon=$(fg 1); colorReset=$(tput sgr0;); colorBold=$(tput bold;); colorSeta=$(fg 16)
	colorPastas=$(fg 12); colorScripts=$(fg 14); colorTextos=$(fg 5) ; colorVideos=$(fg 11)
	colorAudios=$(fg 9); colorImagens=$(fg 1); colorLinks=$(fg 13); colorPdfs=$(fg 4) 
	colorZips=$(fg 3); colorDefault=$(fg 6)

	# Definição dos ícones por tipo de arquivo:
	pastas="$colorReset$colorPastas " #             \
	seta="$colorReset$colorSeta ➼"
	scripts="$colorReset$colorScripts " # 濫       
	pythons="$colorReset$colorScripts " #
	videos="$colorReset$colorVideos " #     
	audios="$colorReset$colorAudios " #     
	imagens="$colorReset$colorImagens " # 
	textos="$colorReset$colorTextos " #        
	links="$colorReset$colorLinks ﰲ" #   ﰲ   ﰲ  ﰲ
	pdfs="$colorReset$colorPdfs " #   
	zips="$colorReset$colorZips " #
	default="$colorReset$colorDefault " #➼   
	recursive="false"
	column="false"
	all="false"
	# Trativa de argumentos
	if [[ -z $@ ]]; then
		recursive="false"
		column="false"
		argStatus="pesquisa"
		all=false	
	else
		for i in $@
		{
			if [[ -d "$i" ]]; then
				directory="$i"
			elif [[ "$i" == "--column" || "$i" == "-c" ]]; then
				column="true"
			elif [[ "$i" == "--recursive" || "$i" == "-r" ]]; then
				recursive="true"
			elif [[ "$i" == "--all" || "$i" == "-a" ]]; then
				all="true"
			else
				pesquisa="$i"
			fi
		}		
	fi
	# Definir o tamanho máximo da label de cada arquivo, influencia na quantidade de colunas
	# em que os dados serão dispostos;
	if [[ $COLUMNS -ge 300 ]]; then
		qtLabels=8
	elif [[ $COLUMNS -lt 300 && $COLUMNS -ge 250 ]]; then
		qtLabels=7
	elif [[ $COLUMNS -lt 250 && $COLUMNS -ge 200 ]]; then
		qtLabels=6
	elif [[ $COLUMNS -lt 200 && $COLUMNS -ge 150 ]]; then
		qtLabels=5
	elif [[ $COLUMNS -lt 150 && $COLUMNS -ge 100 ]]; then
		qtLabels=4
	elif [[ $COLUMNS -lt 100 && $COLUMNS -ge 50 ]]; then
		qtLabels=3
	elif [[ $COLUMNS -lt 50 && $COLUMNS -ge 25 ]]; then
		qtLabels=2
	else
		qtLabels=1
	fi
	limiter=$(($COLUMNS/$qtLabels))
	limiteString=$limiter
}

lst.main ()
{
	# Define o comando ls a ser utilizado;

	if [[ -n "$directory" ]]; then
		if [[ $recursive == "false" && $all == "true" ]];then
			base="$(ls --sort=extension --all --group-directories-first $directory |sed 's/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "true" && $all == "false" ]]; then
			base="$(ls --sort=extension --recursive $directory |sed 's/://g;s/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "true" && $all == "true" ]]; then
			base="$(ls --sort=extension --recursive --all $directory |sed 's/://g;s/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "false" && $all == "false" ]]; then
			base="$(ls --sort=extension --group-directories-first $directory |sed 's/^\.\.$//g;s/^\.$//g')"
		fi
		lst.print |xargs -0
	elif [[ -n $pesquisa ]]; then
		if [[ $recursive == "false" && $all == "true" ]];then
			base="$(ls --sort=extension --all --group-directories-first $pesquisa |sed 's/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "true" && $all == "false" ]]; then
			base="$(ls --sort=extension --recursive $pesquisa |sed 's/://g;s/^\.\.$//g;s/^\.$//g')" 
		elif [[ $recursive == "true" && $all == "true" ]]; then
			base="$(ls --sort=extension --recursive--all --group-directories-first $pesquisa |sed 's/://g;s/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "false" && $all == "false" ]]; then
			base="$(ls --sort=extension --group-directories-first $pesquisa |sed 's/^\.\.$//g;s/^\.$//g' |xargs -0)"
		fi
		directory="$PWD"
		lst.print |xargs -0
	elif [[ -z $pesquisa ]]; then
		if [[ $recursive == "false" && $all == "true" ]];then
			base="$(ls --sort=extension --all --group-directories-first |sed 's/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "true" && $all == "false" ]]; then
			base="$(ls --sort=extension --recursive |sed 's/://g;s/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "true" && $all == "true" ]]; then
			base="$(ls --sort=extension --recursive --all |sed 's/://g;s/^\.\.$//g;s/^\.$//g')"
		elif [[ $recursive == "false" && $all == "false" ]]; then
			base="$(ls --sort=extension --group-directories-first |sed 's/^\.\.$//g;s/^\.$//g')"
		fi
		directory="$PWD"
		lst.print |xargs -0
	fi	
}

lst.print ()
{
	controller=1
	if [[ $recursive == "true" ]]; then
		for i in ${(f)${base}[@]}
		{
			if [[ -d $i ]]; then
					echo "\n$pastas $colorBold$i\n"
					controller=1
			elif [[ -d $directory/$i ]]; then
				if [[ $controller == $qtLabels ]]; then
					if [[ $(wc -c <<< "$i") -gt $limiteString ]]; then
						i=${i[1,$limiteString]}
					fi
					echo -n "$pastas $colorBold$i\n"
					controller=1
				else
					if [[ $(wc -c <<< "$i") -gt $limiteString ]]; then
						i=${i[1,$limiteString]}
					fi
					echo -n "$pastas $colorBold$(printf '%-'$(($limiteString-4))'s' $i)"
					controller=$(($controller+1))
				fi
			else
				val=$(print $directory/**/$i)
				if [[ -d $val ]]; then
					lst.print.format  $pastas $i
				else
					lst.case $i
				fi
			fi
		}
	else
		for i in ${(f)${base}[@]}
		{
			if [[ -d $directory/$i ]]; then
				icon="$(printf '%-1s' $pastas)"
				label="$colorBold$(printf '%-'$(($limiteString-4))'s' $i)"
				if [[ $(wc -c <<< "$label") -gt $limiteString ]]; then
					label=${label[1,$limiteString]}
				fi
				[[ $controller == $qtLabels ]] && \
					{ echo -n "$icon $label\n"; controller=1 } || \
						{ echo -n "$icon $label"; controller=$(($controller+1)) }
			else
				lst.case $i
			fi	
		}
	fi
}

lst.print.format ()
{
	icon="$(printf '%-1s' $1)"
	label="$(printf '%-'$limiteString's' $2)"
	if [[ $(wc -c <<< "$label") -gt $limiteString ]]; then
		label=${label[1,$(($limiteString-4))]}
	fi

	[[ $controller == $qtLabels ]] && \
		{ echo -n "$icon $label\n"; controller=1 } || \
			{ echo -n "$icon $label"; controller=$(($controller+1)) }
}

lst.case ()
{
	case "$@" in

		*".py" )
			icon="$(printf '%-1s' $pythons)"
			label="$(printf '%-'$(($limiteString-4))'s' $@)"
			if [[ $(wc -c <<< "$label") -gt $limiteString ]]; then
				label=${label[1,$limiteString]}
			fi

			[[ $controller == $qtLabels ]] && \
				{ echo -n "$icon $label\n"; controller=1 } || \
					{ echo -n "$icon $label"; controller=$(($controller+1)) } ;;

		*".pdf" ) 
			lst.print.format $pdfs "$@" ;;

		*".7z" || *".zip" || *".tar" || *".tar."* )
			lst.print.format $zips "$@" ;;

		*".jpg" || *".png" || *".jpeg" )
			lst.print.format $imagens "$@" ;;

		*".mp4" || *".MP4" || *".wmv" || *".flv" || *".mov" || \
		*".wmv"  || *".m4a"  || *".mkv"  || *".mpg: "* || *".webm" || *".m3u" ) 
			lst.print.format $videos "$@" ;;

		*".opus" || *".mp3" || *".MP3" || *".m4a" || *".ogg" ) 
			lst.print.format $audios "$@" ;;

		*".sh" || *".zsh" || *".lua" || \
		*".cpp" || *".c"* || *".c" || *".bash" )
			
			icon="$(printf '%-1s' $scripts)"
			label="$(printf '%-'$(($limiteString-4))'s' $@)"
			if [[ $(wc -c <<< "$label") -gt $limiteString ]]; then
				label=${label[1,$limiteString]}
			fi

			[[ $controller == $qtLabels ]] && \
				{ echo -n "$icon $label\n"; controller=1 } || \
					{ echo -n "$icon $label"; controller=$(($controller+1)) } ;;

		*".ini" || *".conf" || *".config" || *".txt" )
			lst.print.format $textos "$@" ;;

		* ) 
			TypeFile="$(file "$@")"
			case "$TypeFile" in
				*".mp4: "* || *".MP4: "* || *".wmv: "* || *".flv: "* || *".webm" || \
				*".mov: "* || *".wmv: "*  || *".m4a: "*  || *".mkv: "*  || \
				*"Video Media"* || *"MP4 Base Media"* || *".mpg: "* ) 
					lst.print.format $videos "$@" ;;

				*"Audio"* || *": data" || *".opus: "* || *".mp3: "* ) 
					lst.print.format $audios "$@" ;;

				*"script, UTF-8 Unicode text executable"* || \
				*"script"* || *"zsh script"* || *" executable" || *" executable"* || \
				*": ELF 64-bit"* || *": ELF 32-bit"* || \
				*": Paul Falstad's zsh script, UTF-8 Unicode text executable" )
					lst.print.format $scripts $colorBold"$@" ;;

				*".txt: "* || *": ASCII text" || *"Uniconde text"* || *": PDF document"* || \
				*": UTF-8 Unicode text" || *".conf: UTF-8 Unicode text" || *": Non-ISO extended-ASCII text" )
					lst.print.format $textos "$@" ;;

				*" image data,"* || *"JPEG image data"* || *": PNG image data,"* ) 
					lst.print.format $imagens "$@" ;;

				*": symbolic link"* ) 
					lst.print.format $links "$@" ;;

				*) 
					lst.print.format $default "$@" ;;
			esac
	esac
}
