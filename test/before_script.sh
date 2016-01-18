#!/usr/bin/env sh


# Check that the sensors file is present

if [ ! -f /usr/bin/sensors ]; then
	echo "/usr/bin/sensors missing: aborting"
	exit 1
fi

