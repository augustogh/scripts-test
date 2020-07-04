#!/bin/bash
docker run --name some-postgres -e POSTGRES_PASSWORD=miercoles.12 -d -p 6543:5432 postgres
#"4040:5432" # HOST:CONTAINER 

