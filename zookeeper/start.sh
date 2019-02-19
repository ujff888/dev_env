#!/bin/sh

cd $(dirname $0)
docker run --name $(basename $(pwd)) -d --rm -p 2181:2181 -p 2888:2888 -p 3888:3888 -v $(pwd)/log:/logs -v $(pwd)/data:/data -v $(pwd)/datalog:/datalog -v $(pwd)/conf:/conf -e ZOO_ID=1 -e ZOO_SERVERS=zookeeper -e ZOO_LOG4J_PROP="INFO,ROLLINGFILE" zookeeper
