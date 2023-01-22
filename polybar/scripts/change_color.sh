#!/usr/bin/bash
PFILE="$HOME/.config/polybar/colors.ini"
RFILE="$HOME/.config/rofi/launchers/type-3/shared/colors.rasi"
RPFILE="$HOME/.config/rofi/powermenu/type-2/shared/colors.rasi"
WDIR="$HOME/.config/polybar/wallpapers/"
JFILE="$HOME/.config/polybar/scripts/toggle.json"

change_color() {
	# polybar
	sed -i -e "s/background = #.*/background = $background/g" $PFILE
	sed -i -e "s/background-alt = #.*/background-alt = $backgroundalt/g" $PFILE
    sed -i -e "s/foreground = #.*/foreground = $foreground/g" $PFILE
	sed -i -e "s/primary = #.*/primary = $primary/g" $PFILE
	sed -i -e "s/underline = #.*/underline = $underline/g" $PFILE
	sed -i -e "s/secondary = #.*/secondary = $secondary/g" $PFILE
	sed -i -e "s/alert = #.*/alert = $alert/g" $PFILE
    sed -i -e "s/disabled = #.*/disabled = #$disabled/g" $PFILE
	sed -i -e "s/resize = #.*/resize = $resize/g" $PFILE
	sed -i -e "s/border = #.*/border = $border/g" $PFILE
	sed -i -e "s/spotify = #.*/spotify = $spotify/g" $PFILE
	
	polybar-msg cmd restart

	#rofi
	sed -i -e "s%@import \"~/.config/rofi/colors/.*\"%@import \"~/.config/rofi/colors/$rtheme.rasi\"%g" $RFILE
	sed -i -e "s%@import \"~/.config/rofi/colors/.*\"%@import \"~/.config/rofi/colors/$rtheme.rasi\"%g" $RPFILE
}

change_wall() {
	# feh
	feh --bg-fill "$WDIR/$file"
}


status=$(jq -r .status $JFILE)
echo $status
if [[ $status = true ]]; then
	#white theme
    echo "$( jq '.status = "false"' $JFILE )" > $JFILE
	background="#AA282A2E"
	backgroundalt="#BB373B41"
	foreground="#C5C8C6"
	primary="#7CA4BD"
	underline="#c75cc9"
	secondary="#8ABEB7"
	alert="#A54242"
	disabled="#707880"
	resize="#553BB8"
	border="#AA282A2E"
	spotify="#1db954"
	rtheme="catppuccin"
	file="defaultw.jpg"
	change_color
	change_wall
else
	#dark theme
    echo "$( jq '.status = "true"' $JFILE )" > $JFILE
	background="#88282A2E"
	backgroundalt="#BB373B41"
	foreground="#C5C8C6"
	primary="#AC6745"
	underline="#AC6745"
	secondary="#8ABEB7"
	alert="#A54242"
	disabled="#707880"
	resize="#AC6745"
	border="#88282A2E"
	spotify="#82B7C6"
	rtheme="dracula"
	file="defaultd.jpg"
	change_color
	change_wall
fi