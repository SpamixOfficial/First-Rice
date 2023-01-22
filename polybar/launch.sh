#!/usr/bin/env bash

#Restore wallpaper

JFILE="$HOME/.config/polybar/scripts/toggle.json"
WDIR="$HOME/.config/polybar/wallpapers/"

change_wall() {
	# feh
	feh --bg-fill "$WDIR/$file"
}

status=$(jq -r .status $JFILE)
echo $status
if [[ $status = true ]]; then
	#dark theme
	file="defaultd.jpg"
	change_wall
else
	#white theme
	file="defaultw.jpg"
	change_wall
fi

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
echo "---" | tee -a /tmp/polybar-bottom.log
echo "---" | tee -a /tmp/polybar-bottom-dummy.log
polybar bar1 | tee -a /tmp/polybar1.log & disown
polybar bottom | tee -a /tmp/polybar-bottom.log & disown
polybar dummy | tee -a /tmp/polybar-bottom-dummy.log & disown


echo "Bars launched..."
