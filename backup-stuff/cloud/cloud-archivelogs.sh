############# ARCHIVE backups ######################
### Crontab would look like this:
#   35  23   10  *   *    root   /root/backup-stuff/cloud/cloud-archivelogs.sh
############# ARCHIVE backups ######################

### Log the creation of the new log archive ###
echo "### cloud log archive added to on $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/cloud-logs/cloud-logs-archive/archive.log

### Package up all of the logs
cd /root/backup-stuff/cloud-logs
tar -cvf /root/backup-stuff/cloud-logs/cloud-logs-archive/$(date "+%Y-%m").tar *.log >> /root/backup-stuff/cloud-logs/cloud-logs-archive/archive.log
echo "# File has been added: /root/backup-stuff/cloud-logs/cloud-logs-archive/$(date "+%Y-%m").tar #" >> /root/backup-stuff/cloud-logs/cloud-logs-archive/archive.log

### Remove the archives logs ###
rm /root/backup-stuff/cloud-logs/*.log >> /root/backup-stuff/cloud-logs/cloud-logs-archive/archive.log

### Log the finish of the new log archives addition ###
echo "### cloud log archive finished at $(date '+%a %b %d %Y at %T')  ###" >> /root/backup-stuff/cloud-logs/cloud-logs-archive/archive.log
echo " " >> /root/backup-stuff/cloud/cloud-logs/cloud-logs-archive/archive.log
cd - > /dev/null
