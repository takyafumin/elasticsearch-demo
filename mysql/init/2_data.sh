#!/bin/bash

mysql -uroot -proot --local-infile esdb -e \
"LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/user_data.csv'
INTO TABLE user
FIELDS TERMINATED BY ','
ENCLOSED BY '\"'
LINES TERMINATED BY '\n'"

mysql -uroot -proot --local-infile esdb -e \
"LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/education_background_data.csv'
INTO TABLE education_background
FIELDS TERMINATED BY ','
ENCLOSED BY '\"'
LINES TERMINATED BY '\n'"

