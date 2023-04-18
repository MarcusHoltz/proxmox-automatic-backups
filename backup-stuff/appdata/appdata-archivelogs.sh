############# ARCHIVE backups ######################
### Crontab would look like this:
#   50  23   10  *   *    root   /root/backup-stuff/appdata/appdata-archivelogs.sh
############# ARCHIVE backups ######################

### Log the creation of the new log archive ###
echo "### appdata log archive added to on $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/appdata-logs/appdata-logs-archive/archive.log

### Package up all of the logs
cd /root/backup-stuff/appdata-logs
tar -cvf /root/backup-stuff/appdata-logs/appdata-logs-archive/$(date "+%Y-%m").tar *.log >> /root/backup-stuff/appdata-logs/appdata-logs-archive/archive.log
echo "# File has been added: /root/backup-stuff/appdata-logs/appdata-logs-archive/$(date "+%Y-%m").tar #" >> /root/backup-stuff/appdata-logs/appdata-logs-archive/archive.log

### Remove the archives logs ###
rm /root/backup-stuff/appdata-logs/*.log >> /root/backup-stuff/appdata-logs/appdata-logs-archive/archive.log

### Log the finish of the new log archives addition ###
echo "### appdata log archive finished at $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/appdata-logs/appdata-logs-archive/archive.log
echo " " >> /root/backup-stuff/appdata/appdata-logs/appdata-logs-archive/archive.log
cd - > /dev/null
