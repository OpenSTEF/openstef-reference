#!/bin/sh
set -e

echo "Start 0_create_databases.sh script"

# Create forecast database
echo "Create database '$INFLUXDB_FORECASTS_DB_NAME'"
influx -execute "CREATE DATABASE $INFLUXDB_FORECASTS_DB_NAME"
if [ $? -eq 0 ]; then
    echo "Succesfully created '$INFLUXDB_FORECASTS_DB_NAME'"
else
    echo "Failed to create database '$INFLUXDB_FORECASTS_DB_NAME'"
fi
# Create realised database
echo "Create database '$INFLUXDB_REALISED_DB_NAME'"
influx -execute "CREATE DATABASE $INFLUXDB_REALISED_DB_NAME"
if [ $? -eq 0 ]; then
    echo "Succesfully created '$INFLUXDB_REALISED_DB_NAME'"
else
    echo "Failed to create database '$INFLUXDB_REALISED_DB_NAME'"
fi