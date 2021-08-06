
# openstf-reference

Reference implementation of the **openstf** stack. It includes all key functionality, e.g. the forecast engine, data storage and -models, the expert user dashboard!
![image](https://user-images.githubusercontent.com/18208480/123398475-e008f100-d5a3-11eb-9d36-75edfec6760a.png)

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

Note: if you're running docker on a windows machine, issues might be caused by windows line endings.
All line endings should be Unix!

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

```shell
$ sudo docker exec -it openstf-nginx /bin/bash
```

## Clear the volumes

Docker will try using previous volumes on runs. But sometimes you want to start fresh. Docker-compose offers the `--renew-anon-volumes` option for this purpose:

```
$ docker-compose up --renew-anon-volumes
```

# TODO
Priority
* Influx
  * add prediction_tAheads data
  * shift data to 'now' (all data)
* Nginx
  * update weight_plot.html for all models (to not have T-30min as most important) 
Nice-to-haves
* icarus-openstf-api (not included yet)
  * add openstf-dbc (JM is working on it)
  * make icarus-openstf-api opensource
  * add icarus-openstf-api pod
* nginx
  * use a persistent volume to store and share .htmls, which icarus-forecasts later can use to store trained models and reports
* mysql
  * change 'tst_icarus' name of table

