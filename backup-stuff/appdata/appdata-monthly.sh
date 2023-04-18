############# MONTHLY backups ######################
### Crontab would look like this:
#   37 23 10 * * root /root/backup-stuff/appdata/appdata-monthly.sh
############# MONTHLY backups ######################
echo "### Monthly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/monthly-$(date "+%Y-%m").log
# proxmox-backup-client backup appdata-rpool.pxar:/rpool/appdata --backup-id "appdata" >> /root/backup-stuff/appdata/appdata-logs/monthly-$(date "+%Y-%m").log
echo "### Monthly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/monthly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/appdata/appdata-logs/monthly-$(date "+%Y-%m").log
