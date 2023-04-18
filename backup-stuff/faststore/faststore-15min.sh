############# FIFTEEN MINUTE backups ######################
### Crontab would look like this:
#   15,30,45 * * * * root /root/backup-stuff/faststore/faststore-15min.sh
############# FIFTEEN MINUTE backups ######################
echo "### Quarter Hour backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/fifteenmin-$(date "+%Y-%m").log
# proxmox-backup-client backup faststore-rpool.pxar:/rpool/faststore --backup-id "faststore" >> /root/backup-stuff/faststore/faststore-logs/fifteenmin-$(date "+%Y-%m").log
echo "### Quarter Hour backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/fifteenmin-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/faststore/faststore-logs/fifteenmin-$(date "+%Y-%m").log
