#!/bin/sh

cd $(dirname $0)
docker run --name $(basename $(pwd)) -d --rm -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -v $(pwd)/data:/var/lib/mysql mariadb:latest
