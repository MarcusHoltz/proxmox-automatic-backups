############# HOURLY backups ######################
### Crontab would look like this:
#    11 * * * * root /root/backup-stuff/cloud/cloud-hourly.sh
############# HOURLY backups ######################
echo "### Hourly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/hourly-$(date "+%Y-%m").log
# proxmox-backup-client backup cloud-longstore.pxar:/longstore/cloud --backup-id "cloud" >> /root/backup-stuff/cloud/cloud-logs/hourly-$(date "+%Y-%m").log
echo "### Hourly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/hourly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/cloud/cloud-logs/hourly-$(date "+%Y-%m").log
