
# openstf-reference

Reference implementation of the **openstf** stack.




# Installation

## Prerequisites

You will need to install both Docker and Docker Compose.

### Install Docker

Follow the instruction on the Get Docker page: https://docs.docker.com/get-docker/

### Install Docker Compose

Follow the instruction on the Install Docker Compose page: https://docs.docker.com/compose/install/

# Usage

To start using the **openstf** reference stack use Docker Compose to bring up the whole stack:

```shell
$ sudo docker-compose up
```

## Grafana

Open on http://localhost:3000
Log in using username `admin` and password `admin`

## PhpMyAdmin

Open on http://localhost:8080
Log in using username `root` and password `root`

## Nginx

Open on http://localhost:8090

# Tips and tricks

## Enter running container

To enter the InfluxDB container run:

```shell
$ sudo docker exec -it openstf-influxdb /bin/bash
```

## Clear the volumes

Docker will try using previous volumes on runs. But sometimes you want to start fresh. Docker-compose offers the `--renew-anon-volumes` option for this purpose:

```
$ docker-compose up --renew-anon-volumes
```

# TODO
- nginx: use a persistent volume to store and share .htmls, which icarus-forecasts later can use to store trained models and reports
- grafana: 
-- In the stationsprognoses-dashboard use localhost:8090 references for trained_models/*/*.html instead of dashboard.icarus.energy
-- change date-time-range of stationsprognose-dashboard so default data is visible (reference to 'now')
-- change name of datasources for easier interpretation
-- change example data to present
-- include 'realized' example data
- mysql: change 'tst_icarus' name of table
