#!/bin/bash

# wait for mysql
while ! docker-compose exec db mysqladmin ping --silent &> /dev/null; do
	echo "Waiting for MySQL connection..."
	sleep 2
done
sleep 5

# setup database
docker-compose exec db bash /tmp/resources/setup.sh


# mysql -> (logstash) -> elasticsearch
docker-compose run es-logstash logstash -f /tmp/conf/user.conf

