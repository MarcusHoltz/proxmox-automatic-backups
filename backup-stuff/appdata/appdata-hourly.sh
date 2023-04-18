############# HOURLY backups ######################
### Crontab would look like this:
#    31 * * * * root /root/backup-stuff/appdata/appdata-hourly.sh
############# HOURLY backups ######################
echo "### Hourly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/hourly-$(date "+%Y-%m").log
# proxmox-backup-client backup appdata-rpool.pxar:/rpool/appdata --backup-id "appdata" >> /root/backup-stuff/appdata/appdata-logs/hourly-$(date "+%Y-%m").log
echo "### Hourly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/hourly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/appdata/appdata-logs/hourly-$(date "+%Y-%m").log
