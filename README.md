[![Build Status](https://travis-ci.org/MatthieuMichon/sensors2csv.svg?branch=master)](https://travis-ci.org/MatthieuMichon/sensors2csv)

# sensors2csv
This repository provides a ``sensors2csv`` script which invokes the ``sensors`` executable and returns a string in CSV format.

# Requirements

* ``sensors`` executable located in the ``/usr/bin`` directory, which is the default configuration in Debian-based distribution after installing the package ``lm-sensors``

# Installation
* The ``sensors2csv`` must be copied in the ``/usr/sbin`` directory
* Crontab and Logrotate must be configured.

# Output Data Format
Output is in plain CSV:

```
$ sensors2csv 
1452893077,19.000,17.000,0.872,12.192,3.344,3.344,5.000,1.512,1.072,3.360,3.216,23.000,25.000
```

The first field represents the eopch time and the rest temperatures or voltages depending on the hardware / software configuration.
