#!/bin/bash
set -e

FORECAST_DATABASENAME="forecast_latest"

echo "Start setup_databases.sh script"
echo "Create database '$FORECAST_DATABASENAME'"
influx -execute "CREATE DATABASE $FORECAST_DATABASENAME"