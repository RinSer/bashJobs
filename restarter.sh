#!/bin/sh

ps auxw | grep apache2 | grep -v grep > /dev/null

if [ $? != 0 ]
then
	/etc/init.d/apache2 start > /home/restarter.log
else
	echo "Alive!" > /home/restarter.log
fi
