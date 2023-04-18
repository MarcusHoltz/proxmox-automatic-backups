############# MONTHLY backups ######################
### Crontab would look like this:
#   17 23 10 * * root /root/backup-stuff/cloud/cloud-monthly.sh
############# MONTHLY backups ######################
echo "### Monthly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/monthly-$(date "+%Y-%m").log
# proxmox-backup-client backup cloud-longstore.pxar:/longstore/cloud --backup-id "cloud" >> /root/backup-stuff/cloud/cloud-logs/monthly-$(date "+%Y-%m").log
echo "### Monthly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/monthly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/cloud/cloud-logs/monthly-$(date "+%Y-%m").log
