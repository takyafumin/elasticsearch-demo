#!/bin/bash

mysql -u root esdb < /tmp/resources/ddl/create_table_users.sql
mysqlimport -u root esdb /tmp/resources/datas/users.csv

