# So you would want to, at the end of the month, at the last min of the day of the end of the month,
# create a new folder with that month's YEAR-MONTH and then tar ball all the archives up,
# and move the tar ball into the new YEAR-MONTH folder, then remove the logs.
# All of this before a new log can be generated.
############# ARCHIVE SNAPSHOTS ######################
### Crontab would look like this:
#   50  22   10  *   *    root   /root/autosnap-stuff/autosnap-archivelogs.sh
### That way it goes off right before the monthly, but after the yearly - and includes the newest daily for that month.
### CRONTAB Format: (Years are captured in June, Months begin on the 10th, at 11:20pm, Weeks begin on Thursday, and Days begin at 11:35pm, Hours start on the hour, and Quarter hours are exactly that.)
############# ARCHIVE SNAPSHOTS ######################

### Log the creation of the new log archive ###
echo "### Snapshot log archive added to on $(date '+%a %b %d %Y at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/archive.log

### Package up all of the logs
cd /root/autosnap-stuff/autosnap-logs
tar -cvf /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/$(date "+%Y-%m").tar *.log >> /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/archive.log
echo "# File has been added: /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/$(date "+%Y-%m").tar #" >> /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/archive.log

### Remove the archives logs ###
rm /root/autosnap-stuff/autosnap-logs/*.log >> /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/archive.log

### Log the finish of the new log archives addition ###
echo "### Snapshot log archive finished at $(date '+%a %b %d %Y at %T')  ###" >> /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/archive.log
echo " " >> /root/autosnap-stuff/autosnap-logs/autosnap-logs-archive/archive.log
cd - > /dev/null
