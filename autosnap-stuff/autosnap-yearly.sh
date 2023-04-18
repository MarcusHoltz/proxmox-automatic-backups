############# YEARLY SNAPSHOTS - Happy Birthday!! ######################
### Crontab would look like this:
#   5 22 10 6 * root /root/autosnap-stuff/autosnap-yearly.sh
### A yearly snapshot takes place mid-year, in June. On June 10th, at 10:05pm a yearly snapshot is taken.
### CRONTAB Format: (Years are captured in June, Months begin on the 10th, at 11:20pm, Weeks begin on Thursday, and Days begin at 11:35pm, Hours start on the hour, and Quarter hours are exactly that.)
############# YEARLY SNAPSHOTS - Happy Birthday!! ######################
echo "### Yearly snapshot began at $(date '+%a %b %d %Y at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/yearly-$(date "+%Y-%m").log
### !!! ATTN !!! __ Modify this section below to include your host or 1.2.3.4,5.6.7.8 multiple hosts. Change the VMID for the VM or 100,101,105 VMs being backed up. Have fun! ###
# cv4pve-autosnap --host='192.168.8.21' --username=root@pam --password=password_here --vmid='100' snap --label='hourly' --keep=10 >> /root/autosnap-stuff/autosnap-logs/yearly-$(date "+%Y-%m").log
echo "### Yearly snapshot ended at $(date '+%a %b %d %Y at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/yearly-$(date "+%Y-%m").log
echo " " >> /root/autosnap-stuff/autosnap-logs/yearly-$(date "+%Y-%m").log
