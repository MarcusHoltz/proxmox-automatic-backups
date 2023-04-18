############# YEARLY backups - Happy Birthday!! ######################
### Crontab would look like this:
#   14 22 10 6 * root /root/backup-stuff/cloud/cloud-yearly.sh
############# YEARLY backups - Happy Birthday!! ######################
echo "### Yearly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/yearly-$(date "+%Y-%m").log
# proxmox-backup-client backup cloud-longstore.pxar:/longstore/cloud --backup-id "cloud" >> /root/backup-stuff/cloud/cloud-logs/yearly-$(date "+%Y-%m").log
echo "### Yearly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/cloud/cloud-logs/yearly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/cloud/cloud-logs/yearly-$(date "+%Y-%m").log
