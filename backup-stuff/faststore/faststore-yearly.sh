############# YEARLY backups - Happy Birthday!! ######################
### Crontab would look like this:
#   24 22 10 6 * root /root/backup-stuff/faststore/faststore-yearly.sh
############# YEARLY backups - Happy Birthday!! ######################
echo "### Yearly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/yearly-$(date "+%Y-%m").log
# proxmox-backup-client backup faststore-rpool.pxar:/rpool/faststore --backup-id "faststore" >> /root/backup-stuff/faststore/faststore-logs/yearly-$(date "+%Y-%m").log
echo "### Yearly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/faststore/faststore-logs/yearly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/faststore/faststore-logs/yearly-$(date "+%Y-%m").log
