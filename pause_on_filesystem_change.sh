#!/bin/bash

fs=$(md5 * | md5)

while : ; do

	fsnew=$(md5 * | md5)

	if [[ "$fsnew" == "$fs" ]]; then

		date
		echo "No change"
		echo

		sleep 5
	else
		break
	fi

done

echo "Filesystem change!"
echo "Pausing undertale"


kill -STOP $(ps -ef | grep -i undertale.app | grep -v grep | awk '{print $2}')
