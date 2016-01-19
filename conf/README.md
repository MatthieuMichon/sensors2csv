# Configuration

## Cron

The ``sensors2csv`` script can be invoked through the *cron* task scheduler, by adding an entry in the crontab.

With a Debian based distribution this would be performed using ``sudo crontab -e`` and than copying the contents of the ``crontab`` file in this present directory.

## Logrotate

Each time cron fires the ``sensors2csv`` script a new line gets added in the ``sensors2csv.csv.log``. With an intervale set at 15 minutes, each week the CSV file would grow by 1240 lines.

Big CSV log file may cause performance and other issues. To avoid such problems a *logrotate* rule can be added, as shwon in the ``logrotate`` file, in the main ``/etc/logrotate.conf`` system configuration file.
