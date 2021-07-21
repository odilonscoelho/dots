#!/usr/bin/env bash

# Create for @losaoall
# github.com/odilonscoelho
help ()
{
    local green='\e[38;5;2m'; local reset='\e[m' ; local bold='\e[1m'

    printf '%b\n' "
    ${bold}${green}Usage:${reset} 
    cor [options] <\"text\">        
    ${green}${bold}options:${reset}
    ${green}${bold}-fg\t--foreground${reset}\t - Foreground <0-255>
    ${green}${bold}-bg\t--backgorund${reset}\t - Background <0-255>
    ${green}${bold}-b\t--bold${reset}\t\t - Bold text
    ${green}${bold}-i\t--italic${reset}\t - Italic text
    ${green}${bold}-u\t--underline${reset}\t - Underline text
    ${green}${bold}-a\t--alert${reset}\t\t - Alert text
    ${green}${bold}-l\t--light${reset}\t\t - Light Text
    ${green}${bold}-h\t--help${reset}\t\t - This dialog"   
}

[[ "$@" == @(--help|-h) ]] && { help ; exit 0 ; }

args=('-fg' '--foreground' '-bg' '--background')
bool=('-r' '--reverse' '-b' '--bold' '-i' '--italic' '-u' '--underline' '-a' '--alert' '-l' '--light' '-h' '--help')

for arg;
{

    if [[  "${args[@]}" =~ $arg ]]; then

		for ARG in ${args[@]}; do
            [[ "$ARG" == "$arg" ]] && 
                { 
                    let nextArgv+=2; nextValue="${!nextArgv}"
                    read "${arg//-/}" <<< "${nextValue}"
                    ignoreds+=("$arg" "$nextValue" "$nextArgv")
                    break; 
                }
	    done
	elif [[ "${args[@]}" =~ "${arg%%=*}" ]]; then
		for ARG in ${args[@]}; do
			[[ "$ARG" == "${arg%%=*}" ]] && 
                { 
                    let nextArgv+=1; nextValue="${!nextArgv}"
                    : "${arg//-/}"
                    read "${_%%=*}" <<< "${arg##*=}"
                    ignoreds+=("$arg")
                    break; 
                }
        done
	fi

	if [[ "${bool[@]}" =~ $arg ]];then
	    for ARG in ${bool[@]}; do
            [[ "$ARG" == "$arg" ]] && 
                { 
                    read "${arg//-/}" <<< "true"
                    ignoreds+=("$arg")
                    break; 
                }
        done
	fi
}

for trash ; { [[ "${ignoreds[@]}" =~ "$trash" ]] && shift 1 ; }

attrs=""

[[ ${fg:=$foreground} ]] && attrs="\e[38;5;${fg}m${attrs}"

[[ ${bg:=$background} ]] && attrs="\e[48;5;${bg}m${attrs}"

[[ ${b:=$bold} ]] && attrs="\e[1m${attrs}"

[[ ${i:=$italic} ]] && attrs="\e[3m${attrs}"

[[ ${u:=$underline} ]] && attrs="\e[4m${attrs}"

[[ ${a:=$alert} ]] && attrs="\e[5m;${attrs}"

[[ ${l:=$light} ]] && attrs="\e[2m${attrs}"

printf '%b\n' "${attrs}${@}\e[m"
