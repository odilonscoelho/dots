#!/bin/zsh

ndids ()
{
  awk '{print $2,$3,$5,$4}' $bd
}

captura.id ()
{
  declare -x id=$(awk '{print $1}' <<< $(wq seletor4 $(wq ndids)))
}

cap.id ()
{
  awk '{print $1}' <<< $(wq seletor4 $(wq ndids))
}

node.sticky ()
{
  captura.id
  bspc node "$id" --flag sticky=on
}

node.stickyoff ()
{
  captura.id
  bspc node "$id" --flag sticky=off
}

node.to.desktop.next ()
{
  bspc node --to-desktop next -f
}

node.to.desktop.prev ()
{
  captura.id
  bspc node $id --to-desktop prev -f
}

node.to.desktop ()
{
  captura.id
  workspace=$(yad --entry --title="WORKSPACE DESTINO")
  bspc node $id --to-desktop $workspace -f
}

node.focus ()
{
  captura.id
  bspc node -f $id
}

wm.restart ()
{
	pkill polybar 2>/dev/null && sleep 0.5
	wq gpuinfo stop 2>/dev/null && sleep 0.5
	taskbar stop 2>/dev/null && sleep 0.5
	wq weatcher stop 2>/dev/null && sleep 0.5
	pkill picom 2>/dev/null && sleep 0.5
	redshift -x 2>/dev/null && sleep 0.5
	nohup ~/.config/bspwm/bspwmrc /dev/null &
}
