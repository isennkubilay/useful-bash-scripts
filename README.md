## Remote to local backup files with Rclone

This script is a simple backup utility using [rclone](https://rclone.org/), a command-line program to manage files on cloud or normal server. 

Example cronjob usage:

`crontab -e`

`*/2 * * * * /$HOME/Desktop/backup-with-rclone.sh /$HOME/Desktop/all.log 2>&1`