#!/bin/sh

cd $(dirname $0)
docker exec -it $(basename $(pwd)) zkCli.sh
