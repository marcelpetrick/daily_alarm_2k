# config for crontab

# every weekday at 0600
0 6 * * 1-5 /home/pi/Desktop/music_for_daily_alarm/daily_alarm.sh
# saturday and sunday at 0700
0 7 * * 6-7 /home/pi/Desktop/music_for_daily_alarm/daily_alarm.sh

# howto

crontab -e

The format for the parameters is the following:
Minutes Hours Day of month Month Weekday Command
If you want to skip a parameter, just add * as input.


Once you have added your line, hit CTRL+O to write out and hit Enter to save.
Exit crontab with CTRL+X

--------

# else vlc fails if the uid is not set, pi is 1000
XDG_RUNTIME_DIR=/run/user/1000

# every weekday at 0600
#21 11 * * 1-5 bash -c /home/pi/Desktop/music_for_daily_alarm/daily_alarm.sh
#* * * * * export DISPLAY=:0; gmplayer -shuffle -loop 0 -playlist Desktop/music_for_daily_alarm/alarmplaylist.m3u 
* * * * * bash -c /home/pi/Desktop/music_for_daily_alarm/daily_alarm.sh

# saturday and sunday at 0700
0 7 * * 6-7 bash -c /home/pi/Desktop/music_for_daily_alarm/daily_alarm.sh
