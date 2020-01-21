#!/bin/bash

cd ~/apache-druid-0.16.1-incubating
./bin/start-micro-quickstart &

cd ~/kafka_2.12-2.1.0
./bin/kafka-server-start.sh config/server.properties & 


cd ~/apache-druid-0.16.1-incubating/quickstart/tutorial
gunzip -c wikiticker-2015-09-12-sampled.json.gz > wikiticker-2015-09-12-sampled.json &

cd ~/kafka_2.12-2.1.0
export KAFKA_OPTS="-Dfile.encoding=UTF-8"
./bin/kafka-console-producer.sh --broker-list localhost:9092 --topic wikipedia < /home/c5300387/apache-druid-0.16.1-incubating/quickstart/tutorial/wikiticker-2015-09-12-sampled.json & 




