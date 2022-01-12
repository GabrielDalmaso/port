*#!/bin/bash

docker run --detach \
        --name mssql-movie \
        --publish 1433:1433 \
	-h g4user \
	--env "ACCEPT_EULA=Y" \
        --env "SA_PASSWORD=password" \
        -t dbmovie \
        -d mcr.microsoft.com/mssql/server:2019-latest

