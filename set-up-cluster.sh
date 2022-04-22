#!/bin/bash

cd /app/cluster-files/7000
rm -rf nodes7000.conf
redis-server redis.conf &
cd /app/cluster-files/7001
rm -rf nodes7001.conf
redis-server redis.conf &
cd /app/cluster-files/7002
rm -rf nodes7002.conf
redis-server redis.conf &
cd /app/cluster-files/7003
rm -rf nodes7003.conf
redis-server redis.conf &
cd /app/cluster-files/7004
rm -rf nodes7004.conf
redis-server redis.conf &
cd /app/cluster-files/7005
rm -rf nodes7005.conf
redis-server redis.conf &

redis-cli  -a pass --cluster create 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 --cluster-replicas 1 --cluster-yes