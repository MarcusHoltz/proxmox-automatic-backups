############# WEEKLY backups ######################
### Crontab would look like this:
#   23 23 * * 4 root /root/backup-stuff/faststore/faststore-weekly.sh
############# WEEKLY backups ######################
echo "### Weekly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/weekly-$(date "+%Y-%m").log
# proxmox-backup-client backup faststore-rpool.pxar:/rpool/faststore --backup-id "faststore" >> /root/backup-stuff/faststore/faststore-logs/weekly-$(date "+%Y-%m").log
echo "### Weekly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/weekly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/faststore/faststore-logs/weekly-$(date "+%Y-%m").log
