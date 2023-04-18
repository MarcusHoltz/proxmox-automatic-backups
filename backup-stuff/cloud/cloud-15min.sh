############# FIFTEEN MINUTE backups ######################
### Crontab would look like this:
#   15,30,45 * * * * root /root/backup-stuff/cloud/cloud-15min.sh
############# FIFTEEN MINUTE backups ######################
echo "### Quarter Hour backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/fifteenmin-$(date "+%Y-%m").log
# proxmox-backup-client backup cloud-longstore.pxar:/longstore/cloud --backup-id "cloud" >> /root/backup-stuff/cloud/cloud-logs/fifteenmin-$(date "+%Y-%m").log
echo "### Quarter Hour backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/fifteenmin-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/cloud/cloud-logs/fifteenmin-$(date "+%Y-%m").log
