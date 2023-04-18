############# YEARLY backups - Happy Birthday!! ######################
### Crontab would look like this:
#   44 22 10 6 * root /root/backup-stuff/web/web-yearly.sh
############# YEARLY backups - Happy Birthday!! ######################
echo "### Yearly backup began on $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/yearly-$(date "+%Y-%m").log
# proxmox-backup-client backup web-rpool.pxar:/rpool/web --backup-id "web" >> /root/backup-stuff/web/web-logs/yearly-$(date "+%Y-%m").log
echo "### Yearly backup ended at $(date '+%a %b %d at %T')  ###" >> /root/backup-stuff/web/web-logs/yearly-$(date "+%Y-%m").log
echo " " >> /root/backup-stuff/web/web-logs/yearly-$(date "+%Y-%m").log
