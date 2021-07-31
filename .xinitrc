# disable screen blanking
xset s off &
xset -dpms

# set keyboard layout
loadkeys no &
setxkbmap no &

# set output display
xrandr --output HDMI-1 --mode 1920x1080 --rate 144.0 &

# set wallpaper
wallpaper &

# launch compositor - picom
picom --experimental-backends --config ~/.config/picom/picom.conf &

# launch dunst notification manager
dunst &

# launch dwmblocks
dwmblocks &

# start pulseaudio
pulseaudio --start &

# loop dwm (allows hot-reload of configuration)
while true; do
	dwm >/dev/null 2>&1
done

# launch dwm
exec dwm
