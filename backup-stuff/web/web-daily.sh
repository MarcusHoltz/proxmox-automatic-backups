############# DAILY backups ######################
### Crontab would look like this:
#   49 23 * * * root /root/backup-stuff/web/web-daily.sh
############# DAILY backups  ######################
echo "### Daily backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/daily-$(date "+%Y-%m").log
# proxmox-backup-client backup web-rpool.pxar:/rpool/web --backup-id "web" >> /root/backup-stuff/web/web-logs/daily-$(date "+%Y-%m").log
echo "### Daily backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/daily-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/web/web-logs/daily-$(date "+%Y-%m").log
