#!/usr/bin/bash
list="$(playerctl --list-all)"
if [[ $list != "spotify" ]] 
then
    $(flatpak run com.spotify.Client) || $(spotify)
else
    $(playerctl --player=spotify play-pause)
fi
