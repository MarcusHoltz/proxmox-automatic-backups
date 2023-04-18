############# HOURLY backups ######################
### Crontab would look like this:
#    21 * * * * root /root/backup-stuff/faststore/faststore-hourly.sh
############# HOURLY backups ######################
echo "### Hourly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/hourly-$(date "+%Y-%m").log
# proxmox-backup-client backup faststore-rpool.pxar:/rpool/faststore --backup-id "faststore" >> /root/backup-stuff/faststore/faststore-logs/hourly-$(date "+%Y-%m").log
echo "### Hourly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/hourly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/faststore/faststore-logs/hourly-$(date "+%Y-%m").log
