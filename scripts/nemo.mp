#!/bin/zsh

for media in $@
{
	<<< "$PWD/$media"
}| mp
