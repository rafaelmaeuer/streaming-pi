#!/bin/bash

echo waiting for server to start
until nc -zvv 127.0.0.1 8080; do echo "waiting for server"; sleep 1; done

echo starting picam
cd /home/pi/picam
./picam --tcpout tcp://127.0.0.1:8181
