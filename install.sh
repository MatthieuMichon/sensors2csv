#!/bin/bash

################################################################################
# CAUTION: Security Risk
# This script is intended be executed by cron with root privileges.
# As such, anything this scripts calls must be trusted and may be modified only
# by root.
################################################################################

# This script installs the ``sensors2csv`` script along with a crontab entry
# and a logrotate section for managing the output log files.
# Check https://github.com/MatthieuMichon/sensors2csv for more details.


# Check that ``lm-sensors`` is installed

PKG_CHECK=$(dpkg-query -W -f='${db:Status-Abbrev}' lm-sensors)
if [ "$PKG_CHECK" != "ii " ]; then
        echo "Error: Required package ``lm-sensors`` is not installed."
        exit 1
fi

