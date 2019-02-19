#!/bin/sh

cd $(dirname $0)
docker kill $(docker ps -a -q --filter="name=$(basename $(pwd))")
