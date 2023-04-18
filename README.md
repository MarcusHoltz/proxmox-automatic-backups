# Automating storage backups with Proxmox
Proxmox offers many solutions for backups. This write-up specifically addresses ZFS based storage systems. 

Using Sanoid, cv4pve, and PBS2 we're able to take snapshots of both the Virtual Machines as well as the data on our ZFS Pools. Allowing a complete backup of the whole system, not just a VM and some QCOW2 disks.


> - **cv4pve-autosnap** - [Proxmox VM automatic backup and retention](autosnap-stuff/)
> - **PBS2 Client** - [Proxmox Backup Server 2 automated backups](backup-stuff/)
> - **Sanoid** - [Sanoid logging and configuration file](sanoid-stuff/)



* * *
## cv4pve-autosnap
[cv4pve-autosnap](https://github.com/Corsinvest/cv4pve-autosnap) allows for the management of VM snapshots.

You assign a label to your snapshot and then a keep number.

So each label will only keep as many as the keep number.

This is intended for say, tag = daily; keep = 7   /or/    tag = weekly; keep 4


* * *
**The config to set everything up with archiving logs and chronjobs are below:**

[Proxmox VM automatic backup and retention](autosnap-stuff/)
* * *



* * *
## Proxmox Backup Client snapshot ZFS Volumes
[proxmox-backup-client](https://pbs.proxmox.com/docs/backup-client.html) is the  command line client for Proxmox Backup Server. It takes a list of backup specifications, which include the archive name on the server, the type of the archive, and the archive source at the client. 

With this tool you gain the features of Proxmox Backup Server 2 with anything you like. It will appear in the GUI just like it was a VM backup. Incremental and browsable. 

This is a great tool, especially if you have multiple Proxmox enviornments that need to share specific backups. 

In this example, I have 4 different snapshots being taken: appdata, cloud, faststore, and web

Each one has a script for backups, based on how often they're executed. These are then combined with cron for execution of backups. 


* * *
**The config to set everything up with archiving logs and chronjobs are below:**

[Proxmox Backup Server 2 automated backups](backup-stuff/)
* * *



* * * 
### Using Sanoid to snapshot ZFS
[Sanoid](https://github.com/jimsalterjrs/sanoid) works great for snaphotting ZFS automatically, it also handles snapshot sync. 

`/etc/sanoid/sanoid.conf` is the file required to get the thing to work. 

The documentation also says to copy `sanoid.defaults.conf`, lets do that now.

`cp /usr/share/sanoid/sanoid.defaults.conf /etc/sanoid/`

There is a starting template you can use, or find the zip in Joplin below. To copy the template file:

`cp /usr/share/doc/sanoid/examples/sanoid.conf /etc/sanoid/`


* * *
#### Then, let's talk about how Sanoid starts. 
We want to disable the installed cron, and let the systemd service manage it. 

`nano /etc/cron.d/sanoid` and put a `#` infront of the line.

Now, if you wanted to add your owncrontab:

`nano /etc/crontab`

Add this line to allow Sanoid to run every min, and run to your local timezone!! It uses UTC by default. 

` * * * * *  root TZ=/usr/share/zoneinfo/America/Denver /usr/sbin/sanoid --quiet --cron`

But it's not nessesary to change crontab, as the systemd service handles everything on Debian.


* * * 
Again, we need to change the timezone from UTC by default to your local timezone. To do this, edit the systemd services that run in the background:

`nano /etc/systemd/system/sanoid.service.wants/sanoid-prune.service`

`nano /usr/lib/systemd/system/sanoid.service`

to change the timezone:

 `Environment=TZ=/usr/share/zoneinfo/America/Denver`



* * *
#### Sanoid uses systemd instead of cron
Also, if you want to run Sanoid like the cron job above, every min -- you will need to change the timeings for the systemd service:

`nano /usr/lib/systemd/system/sanoid.timer`

Change the systemd timer to run at 00 seconds every minute:

`OnCalendar=*-*-* *:*:00`

Or keep it as every 15min:
`OnCalendar=*:0/15`


```
Systemd Timer OnCalendar Format
---------------------------------------
So the basic format of Oncalnedar event is this -
It is divided into 3 parts -

    * - To signify the day of the week eg:- Sat,Thu,Mon

    *-*-* - To signify the calendar date. Which means it breaks down to - year-month-date.
        2021-10-15 is 15th of October
        *-10-15 means every year at 15th October
        *-01-01 means every new year.

    *:*:* is to signify the time component of the calnedar event. So it is - hour:minute:second

```



#### Post Sanoid install test
Then, after install, it's almost required to run it once and make sure it works.

`TZ=/usr/share/zoneinfo/America/Denver /usr/sbin/sanoid --take-snapshots --verbose`

and then

`sanoid --cron`


* * *
**The config to set Sanoid up with archiving logs and chronjobs are below:**

[Sanoid logging and configuration file](sanoid-stuff/)
* * *




* * *
## HTTM (browsing snapshots)
[HTTM](https://github.com/kimono-koans/httm) allows you to view your ZFS snapshots in the terminal with ease. 

### HTTM EXAMPLES:

To find and browse through all the files deleted, recursivly:
* * *
`httm --deleted=only -i -R .`
* * * 
`-i` is interfactive, letting you move through the menu and not just print to screen

`-R` is recursive, meaning, search all folders

`--deleted=only` tells it to only show the deleted files [possible values: all, single, only]

`.` is the current working directory





* * *
### Proxmox suggested  Retention Settings Example

The backup frequency and retention of old backups may depend on how often data changes, and how important an older state may be, in a specific work load. When backups act as a company’s document archive, there may also be legal requirements for how long backups must be kept.

For this example, we assume that you are doing daily backups, have a retention period of 10 years, and the period between backups stored gradually grows.

keep-last=3 - even if only daily backups are taken, an admin may want to create an extra one just before or after a big upgrade. Setting keep-last ensures this.

keep-hourly is not set - for daily backups this is not relevant. You cover extra manual backups already, with keep-last.

keep-daily=13 - together with keep-last, which covers at least one day, this ensures that you have at least two weeks of backups.

keep-weekly=8 - ensures that you have at least two full months of weekly backups.

keep-monthly=11 - together with the previous keep settings, this ensures that you have at least a year of monthly backups.

keep-yearly=9 - this is for the long term archive. As you covered the current year with the previous options, you would set this to nine for the remaining ones, giving you a total of at least 10 years of coverage.

We recommend that you use a higher retention period than is minimally required by your environment; you can always reduce it if you find it is unnecessarily high, but you cannot recreate backups once they have been removed.
