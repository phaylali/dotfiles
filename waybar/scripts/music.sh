#!/bin/bash
STATUS=$(playerctl status --ignore-player=firefox)
ARTIST=$(playerctl metadata artist --ignore-player=firefox)
SONG=$(playerctl metadata title --ignore-player=firefox)
Getmusicdata(){
    local STATUS=$(playerctl status --ignore-player=firefox)
if [[ $STATUS = "Playing" ]]; then
	MESSAGE="⏸️ ${ARTIST} - ${SONG}";
elif [[ $STATUS = "Paused" ]]; then
MESSAGE="▶️ ${ARTIST} - ${SONG}";
else
MESSAGE="⏹️";  
fi
echo "${MESSAGE}"
}
Getmusicdata







