############# WEEKLY SNAPSHOTS ######################
### Crontab would look like this:
#   50 23 * * 4 root /root/autosnap-stuff/autosnap-weekly.sh
### Weekly snapshots take place on Thursdays. This occurs after the daily snapshot is taken, at 11:50pm.
### CRONTAB Format: (Years are captured in June, Months begin on the 10th, at 11:20pm, Weeks begin on Thursday, and Days begin at 11:35pm, Hours start on the hour, and Quarter hours are exactly that.)
############# WEEKLY SNAPSHOTS  ######################
echo "### Weekly snapshot began at $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/weekly-$(date "+%Y-%m").log
### !!! ATTN !!! __ Modify this section below to include your host or 1.2.3.4,5.6.7.8 multiple hosts. Change the VMID for the VM or 100,101,105 VMs being backed up. Have fun! ###
# cv4pve-autosnap --host='192.168.8.21' --username=root@pam --password=password_here --vmid='100' snap --label='weekly' --keep=11 >> /root/autosnap-stuff/autosnap-logs/weekly-$(date "+%Y-%m").log
echo "### Weekly snapshot ended at $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/weekly-$(date "+%Y-%m").log
echo " " >> /root/autosnap-stuff/autosnap-logs/weekly-$(date "+%Y-%m").log
