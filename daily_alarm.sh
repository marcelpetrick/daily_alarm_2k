#!/bin/bash

#echo "$(date)" >> Desktop/music_for_daily_alarm/daily_alarm_runs.log

# sudo apt-get install mplayer mplayer-gui
# also show the ui of mplayer; play the playlist on repeat
#export DISPLAY=:0

echo "start now gmplayer"
gmplayer -shuffle -loop 0 -playlist Desktop/music_for_daily_alarm/alarmplaylist.m3u 
echo "after start"
