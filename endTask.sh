#!/bin/bash
pgrep -f kafka > ids.txt 
pgrep -f superset >> ids.txt 
pgrep -f druid >> ids.txt 

kill -9 $(cat ids.txt)
pgrep -f druid
pgrep -f kafka
pgrep -f superset

echo -e "Kafka, Druid and Superset KILLED!"

