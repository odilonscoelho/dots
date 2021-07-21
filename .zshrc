#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
_ ()
{
    
    # zsh-autocomplelte 
    . $HOME/zsh-autocomplete/zsh-autocomplete.plugin.zsh

    bindkey $key[Up] up-line-or-history
    bindkey $key[Down] down-line-or-history
    bindkey $key[ControlSpace] set-mark-command
    bindkey -M menuselect $key[Return] accept-line

    alias 'suffix'="\n"

    zstyle ':autocomplete:*' config off
    zstyle ':completion:*' verbose no
    #zstyle ':autocomplete:*' default-context                      # history-incremental-search-backward
    zstyle ':autocomplete:tab:*' insert-unambiguous yes
    zstyle ':autocomplete:tab:*' widget-style menu-select
    zstyle ':autocomplete:tab:*' widget-style menu-complete
    zstyle ':autocomplete:tab:*' fzf-completion yes

    local h1=$'%{\e[01;02;39m%}' end=$'%{\e[0m%}' hint=$'%{\e[22;02;39m%}' kbd=$'%{\e[22;39m%}'
      zstyle ':completion:*:descriptions' format "$h1%d$end"
      zstyle ':completion:*:messages' format "$h1%d$end"
      
    zstyle -e ':completion:*:warnings' format '
      local d=${${(j:, :)_lastdescr[@]:#}/(#m)*, /$MATCH[1,-3] or }
      reply=( "'$h1'No ${tail:+matching }$d completions found.'$end'" )'
      
    zstyle ':completion:*:(alias-expansions|requoted|unambiguous)' format \
      "$h1%d$hint  (press ${kbd}Shift${hint}+${kbd}Tab$hint to insert)$end"
      
    zstyle ':completion:*' auto-description '%d'
}
__ ()
{
    # Section zsh-completion zsh-users
    zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
    zstyle ':completion:*' rehash true                              # automatically find new executables in path
    #|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
    # Speed up completions
    zstyle ':completion:*' accept-exact '*(N)'
    zstyle ':completion:*' use-cache on
    zstyle ':completion:*' cache-path ~/.zsh/cache
    #|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
}
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
. $path_colors/colors.zsh 2>/dev/null # Import das cores do tema.
. $path_scripts/icons 2>/dev/null # Para Polybar

export LANG="pt_BR.UTF-8"
export LC_ALL="pt_BR.UTF-8"
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=500
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
export EDITOR=nvim
export VISUAL=vim
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
## Keybindings section
bindkey -e
bindkey '^[[7~' beginning-of-line                               # Home key
bindkey '^[[H' beginning-of-line                                # Home key
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
fi
bindkey '^[[8~' end-of-line                                     # End key
bindkey '^[[F' end-of-line                                     # End key
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
fi
bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^[[3~' delete-char                                     # Delete key
bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[[5~' history-beginning-search-backward               # Page up key
bindkey '^[[6~' history-beginning-search-forward                # Page down key
# Navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
## Alias section
alias mpt='kittysettitle mpTui ;/hdbkp/projetos/shell/tui/depur'
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'
alias dots="$path_dots"
alias temas="$path_colors"
alias scripts="$path_scripts"
alias bar="$path_polybar"
alias pacinstall="sudo pacman -S"
alias pacinstalled="sudo pacman -Qe"
alias pacremove="sudo pacman -R"
alias pacremovefull="sudo pacman -Rsn"
alias pacorfaos="sudo pacman -Qdt |awk {'print $1'}"
alias aurinstalled='sudo pacman -Qm'
alias aursearch='yay -Ss'
alias aurinstall='yay -S'
alias aurremove='yay -R'
alias aurremovefull='yay -Rsn'
alias equalizer='pulseaudio-equalizer enable'
alias ls='ls --color=auto'
alias nn='nano'
alias n='kittysettitle "nvim"; nvim'
alias m='micro'
alias hd='/hdbkp/'
alias dots='$path_dots'
alias temas='$path_colors'
alias scripts='$path_scripts'
alias polybar='$path_polybar'
alias kittysettitle='kitty @set-window-title $@'
alias kittydetachwindow='kitty @detach-window'
alias volume='pulsemixer'
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# Section zsh-completion zsh-users
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# Theming section
[[ $UID == 1000 ]] && 
    {
        autoload -U compinit colors zcalc 
        compinit -d
    } || 
        {
            autoload -U colors zcalc
        }

#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# enable substitution for prompt    
setopt prompt_subst
SeparatoR () <<< "%F{$@}"
Jobs_Runn="%K{black}%F{magenta}  %F{white}%j "
Hist_Numb="%K{white}%F{magenta} %F{black} %!"
User_Prev="%(!|$(SeparatoR red)%F{white}%K{red}   %k%f|$(SeparatoR blue)%F{black}%K{blue}   %k%f)"
Return_Cm="%(?|$(SeparatoR green)%F{black}%K{green}   %?|$(SeparatoR red)%F{black}%K{red}   %?)"
Dir_Curre="%K{white}%F{black} %1~ %F{white}%K{black}"
Icon_Pont="%(!|%K{black}%F{red}   %k%F{black}%f%k |%K{black}%F{blue}   %k%F{black}%f%k )"
# RRPROMPT="$(SeparatoR black)$Jobs_Runn$(SeparatoR white)$Hist_Numb$Return_Cm$User_Prev"
RRPROMPT="$(SeparatoR white)$Hist_Numb$Return_Cm"
# job_status ()
# {
    # [[ %j -gt 0 ]] && RPROMPT="$(SeparatoR black)%K{black}%F{magenta}  %F{white}%j $RRPROMPT" || RPROMPT="$RRPROMPT"
# }
git_status ()
{
    git rev-parse --is-inside-work-tree &>/dev/null &&
        RPROMPT="$(SeparatoR cyan)%K{cyan}%F{black} $(git name-rev --name-only --no-undefined --always HEAD)   $RRPROMPT" ||
            RPROMPT="$RRPROMPT"
}
precmd_functions+=(git_status)
PROMPT="$Dir_Curre$Icon_Pont"
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=fg=black,bg=white,bold,underline
# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#
# autosuggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=100
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=black,bg=white,bold,underline"
#|/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\//\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|#

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
