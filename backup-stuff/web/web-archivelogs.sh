############# ARCHIVE backups ######################
### Crontab would look like this:
#   51  23   10  *   *    root   /root/backup-stuff/web/web-archivelogs.sh
############# ARCHIVE backups ######################

### Log the creation of the new log archive ###
echo "### web log archive added to on $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/web-logs/web-logs-archive/archive.log

### Package up all of the logs
cd /root/backup-stuff/web-logs
tar -cvf /root/backup-stuff/web-logs/web-logs-archive/$(date "+%Y-%m").tar *.log >> /root/backup-stuff/web-logs/web-logs-archive/archive.log
echo "# File has been added: /root/backup-stuff/web-logs/web-logs-archive/$(date "+%Y-%m").tar #" >> /root/backup-stuff/web-logs/web-logs-archive/archive.log

### Remove the archives logs ###
rm /root/backup-stuff/web-logs/*.log >> /root/backup-stuff/web-logs/web-logs-archive/archive.log

### Log the finish of the new log archives addition ###
echo "### web log archive finished at $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/web-logs/web-logs-archive/archive.log
echo " " >> /root/backup-stuff/web/web-logs/web-logs-archive/archive.log
cd - > /dev/null
