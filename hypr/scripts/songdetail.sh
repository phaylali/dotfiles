#!/bin/bash

song_info=$(playerctl metadata --format '{{artist}} | {{title}}' --ignore-player=firefox)

echo "$song_info" 