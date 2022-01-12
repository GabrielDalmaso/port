#!/bin/bash

docker run --detach \
	--name mariadb-movie \
	--publish 3306:3306 \
	--env MARIADB_USER=g4user \
	--env MARIADB_PASSWORD=password \
	--env MARIADB_ROOT_PASSWORD=password \
	--env MARIADB_DATABASE=dbmovie \
	mariadb:latest
