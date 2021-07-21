#!/bin/zsh

/hdbkp/projetos/shell/tui/depur "$(\
    for media in $@
    {
        <<< "$PWD/$media"
    })"

