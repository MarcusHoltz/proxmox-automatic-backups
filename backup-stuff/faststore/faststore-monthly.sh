############# MONTHLY backups ######################
### Crontab would look like this:
#   27 23 10 * * root /root/backup-stuff/faststore/faststore-monthly.sh
############# MONTHLY backups ######################
echo "### Monthly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/monthly-$(date "+%Y-%m").log
# proxmox-backup-client backup faststore-rpool.pxar:/rpool/faststore --backup-id "faststore" >> /root/backup-stuff/faststore/faststore-logs/monthly-$(date "+%Y-%m").log
echo "### Monthly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/monthly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/faststore/faststore-logs/monthly-$(date "+%Y-%m").log
