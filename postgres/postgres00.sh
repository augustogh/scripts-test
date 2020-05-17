#!/bin/bash
docker run --name some-postgres -e POSTGRES_PASSWORD=miercoles.12 -d -p 5432:5432 postgres

