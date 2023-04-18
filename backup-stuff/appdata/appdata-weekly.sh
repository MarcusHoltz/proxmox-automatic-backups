############# WEEKLY backups ######################
### Crontab would look like this:
#   33 23 * * 4 root /root/backup-stuff/appdata/appdata-weekly.sh
############# WEEKLY backups ######################
echo "### Weekly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/weekly-$(date "+%Y-%m").log
# proxmox-backup-client backup appdata-rpool.pxar:/rpool/appdata --backup-id "appdata" >> /root/backup-stuff/appdata/appdata-logs/weekly-$(date "+%Y-%m").log
echo "### Weekly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/weekly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/appdata/appdata-logs/weekly-$(date "+%Y-%m").log
