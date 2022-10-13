#!/bin/bash

echo starting youtube
URL=`cat ~/Documents/youtube.txt`
ffmpeg -i tcp://127.0.0.1:8181?listen -c:v copy -f flv $URL
