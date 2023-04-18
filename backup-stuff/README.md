## Proxmox Backup Client snapshot ZFS Volumes

[proxmox-backup-client](https://pbs.proxmox.com/docs/backup-client.html) is the command line client for Proxmox Backup Server. It takes a list of backup specifications, which include the archive name on the server, the type of the archive, and the archive source at the client. 


With this tool you gain the features of Proxmox Backup Server 2 with anything you like. It will appear in the GUI just like it was a VM backup. Incremental and browsable. 

This is a great tool, especially if you have multiple Proxmox enviornments that need to share specific backups. 



* * * 
### Example Setup 
In this example, I have 4 different snapshots being taken: appdata, cloud, faststore, and web

Each one has a script for backups, based on how often they're executed. These are then combined with cron for execution of backups. 



