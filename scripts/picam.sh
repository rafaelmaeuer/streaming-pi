#!/bin/bash

echo "waiting for nginx to start"
until nc -zvv 127.0.0.1 8080;
do echo "waiting for nginx"; sleep 1;
done

echo starting picam
cd /home/pi/picam
./picam --alsadev hw:1,0 --volume 0.5 --tcpout tcp://127.0.0.1:8181
