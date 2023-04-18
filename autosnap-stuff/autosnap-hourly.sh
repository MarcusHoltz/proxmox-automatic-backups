############# HOURLY SNAPSHOTS ######################
### Crontab would look like this:
#    0 * * * * root /root/autosnap-stuff/autosnap-hourly.sh
### That way it goes off right on the hour, at the hour.
### CRONTAB Format: (Years are captured in June, Months begin on the 10th, at 11:20pm, Weeks begin on Thursday, and Days begin at 11:35pm, Hours start on the hour, and Quarter hours are exactly that.)
############# HOURLY SNAPSHOTS  ######################
echo "### Hourly snapshot began at $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/hourly-$(date "+%Y-%m").log
### !!! ATTN !!! __ Modify this section below to include your host or 1.2.3.4,5.6.7.8 multiple hosts. Change the VMID for the VM or 100,101,105 VMs being backed up. Have fun! ###
# cv4pve-autosnap --host='192.168.8.21' --username=root@pam --password=password_here --vmid='100' snap --label='hourly' --keep=40 >> /root/autosnap-stuff/autosnap-logs/hourly-$(date "+%Y-%m").log
echo "### Hourly snapshot ended at $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/hourly-$(date "+%Y-%m").log
echo " " >> /root/autosnap-stuff/autosnap-logs/hourly-$(date "+%Y-%m").log
