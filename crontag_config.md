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