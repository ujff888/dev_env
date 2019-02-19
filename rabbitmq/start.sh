#!/bin/sh

cd $(dirname $0)
docker run --name $(basename $(pwd)) -d --rm -p 4369:4369 -p 5671-5672:5671-5672 -p 25672:25672 -v $(pwd)/etc:/etc/rabbitmq -v $(pwd)/data:/var/lib/rabbitmq -v $(pwd)/log:/var/log/rabbitmq -e RABBITMQ_DEFAULT_VHOST='/' -e RABBITMQ_DEFAULT_USER='admin' -e RABBITMQ_DEFAULT_PASS='qwertyuiop' rabbitmq
