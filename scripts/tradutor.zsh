#!/bin/zsh
tradutor.sel ()
{
  trans -b "$(xclip -s xclipboard -o)"
}
tradutor.args ()
{
  trans -b "$@"
}
