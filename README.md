
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

## PhpMyAdmin

Open on https://localhost:8080
Log in using username `root` and password `root`

## Grafana

Open on https://localhost:3000
Log in using username `admin` and password `admin`

# Tips and tricks

## Clear the volumes

Docker will try using previous volumes on runs. But sometimes you want to start fresh. Docker-compose offers the `--renew-anon-volumes` option for this purpose:

```
$ docker-compose up --renew-anon-volumes
```
