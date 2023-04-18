## cv4pve-autosnap
[cv4pve-autosnap](https://github.com/Corsinvest/cv4pve-autosnap) allows for the management of VM snapshots. Automatic snapshot for Proxmox VE with retention. Cv4pve works outside the Proxmox VE host using the API.


You assign a label to your snapshot and then a keep number.

So each label will only keep as many as the keep number.

This is intended for say, tag = daily; keep = 7   /or/    tag = weekly; keep 4


