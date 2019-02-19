#!/bin/sh

if [ $# -eq 0 ];then
	echo "usage: $0 service1 [service2 [service3 ...]]"
	exit 0
fi

for i in "$@"; do
	cd $(dirname $0)
	sh "$(pwd)/$i/stop.sh" || echo "stop $i failed"
done
