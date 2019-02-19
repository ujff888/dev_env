#!/bin/sh

cd $(dirname $0)
docker run --name $(basename $(pwd)) -d --rm -p 27017:27017 -v $(pwd)/data:/data/db -v $(pwd)/log:/var/log/mongodb mongo:3.4
