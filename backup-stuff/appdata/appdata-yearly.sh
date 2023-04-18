############# YEARLY backups - Happy Birthday!! ######################
### Crontab would look like this:
#   34 22 10 6 * root /root/backup-stuff/appdata/appdata-yearly.sh
############# YEARLY backups - Happy Birthday!! ######################
echo "### Yearly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/yearly-$(date "+%Y-%m").log
# proxmox-backup-client backup appdata-rpool.pxar:/rpool/appdata --backup-id "appdata" >> /root/backup-stuff/appdata/appdata-logs/yearly-$(date "+%Y-%m").log
echo "### Yearly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/appdata/appdata-logs/yearly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/appdata/appdata-logs/yearly-$(date "+%Y-%m").log
