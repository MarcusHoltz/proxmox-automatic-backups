############# FIFTEEN MINUTE backups ######################
### Crontab would look like this:
#   15,30,45 * * * * root /root/backup-stuff/web/web-15min.sh
############# FIFTEEN MINUTE backups ######################
echo "### Quarter Hour backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/fifteenmin-$(date "+%Y-%m").log
# proxmox-backup-client backup web-rpool.pxar:/rpool/web --backup-id "web" >> /root/backup-stuff/web/web-logs/fifteenmin-$(date "+%Y-%m").log
echo "### Quarter Hour backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/fifteenmin-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/web/web-logs/fifteenmin-$(date "+%Y-%m").log
