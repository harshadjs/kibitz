#!/bin/bash

hash cowsay > /dev/null 2>&1
if [ "$?" != "0" ]; then
	echo "You don't have cowsay installed"
	echo "Run: sudo apt-get install cowsay"
	exit 0
fi

hash fortune > /dev/null 2>&1
if [ "$?" != "0" ]; then
	echo "You don't have cowsay installed"
	echo "Run: sudo apt-get install fortune"
	exit 0
fi

echo "$(cat names | shuf -n 1), $(fortune)" | \
	cowsay -f `ls /usr/share/cowsay/cows | shuf -n 1`
