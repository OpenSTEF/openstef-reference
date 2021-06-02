#!/bin/sh
set -e

echo "Start setup_databases.sh script"
echo "Create database '$FORECAST_DB_NAME'"
influx -execute "CREATE DATABASE $FORECAST_DB_NAME"
if [ $? -eq 0 ]; then
    echo "Succesfully created '$FORECAST_DB_NAME'"
else
    echo "Failed to create database '$FORECAST_DB_NAME'"
fi