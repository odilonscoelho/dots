emulate sh -c 'source /etc/profile'

declare -x QT_SELECT=5

declare -x QT_QPA_PLATFORMTHEME="qt5ct"
#declare -x DESKTOP_SESSION="gnome"
#declare -x LANG="en_US.UTF-8"
export LANG="pt_BR.UTF-8"
# declare -x XKB_DEFAULT_LAYOUT="br"
# declare -x XKB_DEFAULT_VARIANT="abnt2"
# declare -x LC_COLLATE="pt_BR.UTF-8"
declare -x LESS_TERMCAP_ue="pt_BR.UTF-8"
declare -x LESS_TERMCAP_us="pt_BR.UTF-8"
#declare -x TERM="xterm-256color"
export TERM="kitty"

declare -x PATH=${PATH}:~/.local/bin

declare -x path_dots=/hdbkp/dots
declare -x path_scripts=$path_dots/scripts
declare -x path_polybar=$path_dots/polybar
declare -x path_colors=$path_dots/temas

if [[ ! $(tty) =~ /dev/tty* ]];then
	. $path_colors/colors.zsh 2>/dev/null # Import das cores do tema.
	. $path_scripts/allfunctions 2>/dev/null # Todas as funções criadas para o shell
	. $path_scripts/lst 2>/dev/null # Um ls bonitinho
else
    alias xqtile='export WM="qtile"; startx'
    alias xbspwm='export WM="bspwm"; startx'
fi
