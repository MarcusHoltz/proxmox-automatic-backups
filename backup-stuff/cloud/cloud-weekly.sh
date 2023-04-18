############# WEEKLY backups ######################
### Crontab would look like this:
#   13 23 * * 4 root /root/backup-stuff/cloud/cloud-weekly.sh
############# WEEKLY backups ######################
echo "### Weekly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/weekly-$(date "+%Y-%m").log
# proxmox-backup-client backup cloud-longstore.pxar:/longstore/cloud --backup-id "cloud" >> /root/backup-stuff/cloud/cloud-logs/weekly-$(date "+%Y-%m").log
echo "### Weekly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/weekly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/cloud/cloud-logs/weekly-$(date "+%Y-%m").log
