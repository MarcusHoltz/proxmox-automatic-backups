* * * 
# Using Sanoid to snapshot ZFS
[Sanoid](https://github.com/jimsalterjrs/sanoid) works great for snaphotting ZFS automatically, it also handles snapshot sync. 

`/etc/sanoid/sanoid.conf` is the file required to get the thing to work. 

The documentation also says to copy `sanoid.defaults.conf`, lets do that now.

`cp /usr/share/sanoid/sanoid.defaults.conf /etc/sanoid/`

There is a starting template you can use, copy the template file:

`cp /usr/share/doc/sanoid/examples/sanoid.conf /etc/sanoid/`



* * *
## Then, let's talk about how Sanoid starts. 

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
## Sanoid uses systemd instead of cron

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



## Post Sanoid install test

Then, after install, it's almost required to run it once and make sure it works.

`TZ=/usr/share/zoneinfo/America/Denver /usr/sbin/sanoid --take-snapshots --verbose`

and then

`sanoid --cron`


