############# ARCHIVE SANOID LOGS##############################################
##																			 ##
##   Crontab would look like this:                    						 ##
##   58  23   10  *   *    root   /root/sanoid-stuff/sanoid-archivelogs.sh	 ##
##	 On the 10th of every month at 11:58pm, cron runs sanoid-archivelogs.sh  ##
############# ARCHIVE SANOID LOGS##############################################

### Log the creation of the new log archive ###
echo "### Sanoid log archive added to on $(date '+%a %b %d %Y at %T')  ###" >> /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/archive.log

### Package up all of the logs
cd /root/sanoid-stuff/sanoid-logs
tar -cvf /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/$(date "+%Y-%m").tar *.log >> /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/archive.log
echo "# File has been added: /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/$(date "+%Y-%m").tar #" >> /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/archive.log

### Remove the archives logs ###
rm /root/sanoid-stuff/sanoid-logs/*.log >> /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/archive.log

### Log the finish of the new log archives addition ###
echo "### Sanoid log archive finished at $(date '+%a %b %d %Y at %T')  ###" >> /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/archive.log
echo " " >> /root/sanoid-stuff/sanoid-logs/sanoid-logs-archive/archive.log
cd - > /dev/null
