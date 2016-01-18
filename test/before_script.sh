#! /usr/bin/env sh

echo "### Before Script"


# Check that the sensors file is present

if [ ! -f /usr/bin/sensors ]; then
	echo "/usr/bin/sensors missing: aborting"
	exit 1
fi

