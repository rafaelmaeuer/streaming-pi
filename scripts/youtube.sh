#!/bin/bash

echo "waiting for nginx to start"
until nc -zvv 127.0.0.1 1935;
do echo "waiting for nginx"; sleep 1;
done

echo "check if picam is recording"
if [[ $(systemctl is-active picam) == "failed" ]]; then
    /home/pi/shutdown.sh reboot
else
    rm -f /home/pi/Documents/count.txt
fi

echo starting youtube
URL=`cat /home/pi/Documents/youtube.txt`
ffmpeg -i rtmp://127.0.0.1:1935/picam/live -c:v copy -c:a copy -f flv $URL
