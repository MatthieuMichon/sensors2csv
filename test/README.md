# Test directory

This directory contains the following files for testing purposes:

* ``install.sh``: Executed by *Travis-CI* before calling the test script. Creates a script ``/usr/bin/sensors`` which simulates the output of the real ``sensors`` binary from the *lm-sensors* package.
* ``before_script.sh``: Executed by *Travis-CI* before calling the test script but after ``install.sh``. This script checks that the file ``/usr/bin/sensors`` exists.
* ``script.sh``: Executed after the two previous scripts. Calls the ``sensors2csv`` file from this git repository.
