############# DAILY backups ######################
### Crontab would look like this:
#   29 23 * * * root /root/backup-stuff/faststore/faststore-daily.sh
############# DAILY backups  ######################
echo "### Daily backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/daily-$(date "+%Y-%m").log
# proxmox-backup-client backup faststore-rpool.pxar:/rpool/faststore --backup-id "faststore" >> /root/backup-stuff/faststore/faststore-logs/daily-$(date "+%Y-%m").log
echo "### Daily backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/daily-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/faststore/faststore-logs/daily-$(date "+%Y-%m").log
