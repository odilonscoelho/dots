#!/bin/zsh
wm.honor.size.hints.togle ()
{
  [[ $(bspc config honor_size_hints) == "false" ]]&&\
    bspc config honor_size_hints true ||\
    bspc config honor_size_hints false
}

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

bsp.gap ()
{
  bspc config window_gap $@
}

bsp.gap.hori ()
{
  bspc config top_padding $@ && bspc config bottom_padding $@
}

bsp.gap.vert ()
{
  bspc config right_padding $@ && bspc config left_padding $@
}
bsp.gap.geral ()
{
  bspc config top_padding $1 && bspc config bottom_padding $1
  bspc config right_padding $2 && bspc config left_padding $2
  bspc config window_gap $3
}
bsp.border.width ()
{
  bspc config border_width $@
}
bsp.border.color.focused ()
{
  bspc config focused_border_color $@
}
bsp.border.color.normal ()
{
  bspc config normal_border_color $@
  bspc config active_border_color $@
  bspc config presel_feedback_color $@
}

bsp.clearmodifiers ()
{
  xdotool keydown --clearmodifiers super && sleep 1 && xdotool keyup --clearmodifiers super
}

wm.restart ()
{
	pkill polybar 2>/dev/null && sleep 0.5
	wq gpuinfo stop 2>/dev/null && sleep 0.5
	taskbar stop 2>/dev/null && sleep 0.5
	wq weatcher stop 2>/dev/null && sleep 0.5
	pkill picom 2>/dev/null && sleep 0.5
	redshift -x 2>/dev/null && sleep 0.5
	pkill redshift 2>/dev/null && sleep 0.5
	pkill dunst 2>/dev/null && sleep 0.5
	{ pulseaudio-equalizer disable &>/dev/null } && sleep 0.5
	pkill kitty &>/dev/null && sleep 0.5
	zsh ~/.config/bspwm/bspwmrc &>/dev/null &
}
