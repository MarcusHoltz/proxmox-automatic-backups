############# FIFTEEN MINUTE backups ######################
### Crontab would look like this:
#   15,30,45 * * * * root /root/backup-stuff/appdata/appdata-15min.sh
############# FIFTEEN MINUTE backups ######################
echo "### Quarter Hour backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/fifteenmin-$(date "+%Y-%m").log
# proxmox-backup-client backup appdata-rpool.pxar:/rpool/appdata --backup-id "appdata" >> /root/backup-stuff/appdata/appdata-logs/fifteenmin-$(date "+%Y-%m").log
echo "### Quarter Hour backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/fifteenmin-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/appdata/appdata-logs/fifteenmin-$(date "+%Y-%m").log
