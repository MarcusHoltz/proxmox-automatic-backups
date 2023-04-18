############# MONTHLY SNAPSHOTS ######################
### Crontab would look like this:
#   20  23  10  *  *    root   /root/autosnap-stuff/autosnap-monthly.sh
### Monthly snapshots are on the 10th day of that month. The monthly snapshot happens on the 10th at 11:20pm.
### CRONTAB Format: (Years are captured in June, Months begin on the 10th, at 11:20pm, Weeks begin on Thursday, and Days begin at 11:35pm, Hours start on the hour, and Quarter hours are exactly that.)
############# MONTHLY SNAPSHOTS  ######################
echo "### Monthly snapshot began at $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/monthly-$(date "+%Y-%m").log
### !!! ATTN !!! __ Modify this section below to include your host or 1.2.3.4,5.6.7.8 multiple hosts. Change the VMID for the VM or 100,101,105 VMs being backed up. Have fun! ###
# cv4pve-autosnap --host='192.168.8.21' --username=root@pam --password=password_here --vmid='100' snap --label='monthly' --keep=35 >> /root/autosnap-stuff/autosnap-logs/monthly-$(date "+%Y-%m").log
echo "### Monthly snapshot ended at $(date '+%a %b %d at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/monthly-$(date "+%Y-%m").log
echo " " >> /root/autosnap-stuff/autosnap-logs/monthly-$(date "+%Y-%m").log
