#!/bin/sh

cd $(dirname $0)
docker run --name $(basename $(pwd)) -d --rm -p 8300-8302:8300-8302 -p 8301-8302:8301-8302/udp  -p 8500:8500 -p 8600:8600 -p 8600:8600/udp consul:latest agent -dev -client 0.0.0.0
