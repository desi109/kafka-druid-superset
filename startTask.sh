#!/bin/bash

nohup ./kafka-druid.sh 
nohup ./superset.sh

 
echo -e "Kafka, Druid and Superset started!"



