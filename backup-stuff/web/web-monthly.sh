############# MONTHLY backups ######################
### Crontab would look like this:
#   47 23 10 * * root /root/backup-stuff/web/web-monthly.sh
############# MONTHLY backups ######################
echo "### Monthly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/monthly-$(date "+%Y-%m").log
# proxmox-backup-client backup web-rpool.pxar:/rpool/web --backup-id "web" >> /root/backup-stuff/web/web-logs/monthly-$(date "+%Y-%m").log
echo "### Monthly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/monthly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/web/web-logs/monthly-$(date "+%Y-%m").log
