############# HOURLY backups ######################
### Crontab would look like this:
#    41 * * * * root /root/backup-stuff/web/web-hourly.sh
############# HOURLY backups ######################
echo "### Hourly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/hourly-$(date "+%Y-%m").log
# proxmox-backup-client backup web-rpool.pxar:/rpool/web --backup-id "web" >> /root/backup-stuff/web/web-logs/hourly-$(date "+%Y-%m").log
echo "### Hourly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/hourly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/web/web-logs/hourly-$(date "+%Y-%m").log
