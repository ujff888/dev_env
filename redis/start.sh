#!/bin/sh

cd $(dirname $0)
docker run --name $(basename $(pwd)) -d --rm -p 6379:6379 -v $(pwd)/data:/data -v $(pwd)/log:/var/log/redis redis:latest
