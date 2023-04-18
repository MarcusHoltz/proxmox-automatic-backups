############# DAILY backups ######################
### Crontab would look like this:
#   19 23 * * * root /root/backup-stuff/cloud/cloud-daily.sh
############# DAILY backups  ######################
echo "### Daily backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/daily-$(date "+%Y-%m").log
# proxmox-backup-client backup cloud-longstore.pxar:/longstore/cloud --backup-id "cloud" >> /root/backup-stuff/cloud/cloud-logs/daily-$(date "+%Y-%m").log
echo "### Daily backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/daily-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/cloud/cloud-logs/daily-$(date "+%Y-%m").log
