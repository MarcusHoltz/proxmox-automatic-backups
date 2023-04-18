############# ARCHIVE backups ######################
### Crontab would look like this:
#   48  23   10  *   *    root   /root/backup-stuff/faststore/faststore-archivelogs.sh
############# ARCHIVE backups ######################

### Log the creation of the new log archive ###
echo "### faststore log archive added to on $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/faststore-logs/faststore-logs-archive/archive.log

### Package up all of the logs
cd /root/backup-stuff/faststore-logs
tar -cvf /root/backup-stuff/faststore-logs/faststore-logs-archive/$(date "+%Y-%m").tar *.log >> /root/backup-stuff/faststore-logs/faststore-logs-archive/archive.log
echo "# File has been added: /root/backup-stuff/faststore-logs/faststore-logs-archive/$(date "+%Y-%m").tar #" >> /root/backup-stuff/faststore-logs/faststore-logs-archive/archive.log

### Remove the archives logs ###
rm /root/backup-stuff/faststore-logs/*.log >> /root/backup-stuff/faststore-logs/faststore-logs-archive/archive.log

### Log the finish of the new log archives addition ###
echo "### faststore log archive finished at $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/faststore-logs/faststore-logs-archive/archive.log
echo " " >> /root/backup-stuff/faststore/faststore-logs/faststore-logs-archive/archive.log
cd - > /dev/null
