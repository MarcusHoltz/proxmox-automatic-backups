############# WEEKLY backups ######################
### Crontab would look like this:
#   43 23 * * 4 root /root/backup-stuff/web/web-weekly.sh
############# WEEKLY backups ######################
echo "### Weekly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/weekly-$(date "+%Y-%m").log
# proxmox-backup-client backup web-rpool.pxar:/rpool/web --backup-id "web" >> /root/backup-stuff/web/web-logs/weekly-$(date "+%Y-%m").log
echo "### Weekly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/weekly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/web/web-logs/weekly-$(date "+%Y-%m").log
