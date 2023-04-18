############# DAILY SNAPSHOTS ######################
### Crontab would look like this:
#   35 23 * * * root /root/autosnap-stuff/autosnap-daily.sh
### Daily snapshots occur at the end of the day. This takes place at 11:35pm.
### CRONTAB Format: (Years are captured in June, Months begin on the 10th, at 11:20pm, Weeks begin on Thursday, and Days begin at 11:35pm, Hours start on the hour, and Quarter hours are exactly that.)
############# DAILY SNAPSHOTS  ######################
echo "### Daily snapshot began on $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/daily-$(date "+%Y-%m").log
### !!! ATTN !!! __ Modify this section below to include your host or 1.2.3.4,5.6.7.8 multiple hosts. Change the VMID for the VM or 100,101,105 VMs being backed up. Have fun! ###
# cv4pve-autosnap --host='192.168.8.21' --username=root@pam --password=password_here --vmid='101' snap --label='daily' --keep=20 >> /root/autosnap-stuff/autosnap-logs/daily-$(date "+%Y-%m").log
echo "### Daily snapshot ended at $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/daily-$(date "+%Y-%m").log
echo " " >> /root/autosnap-stuff/autosnap-logs/daily-$(date "+%Y-%m").log
