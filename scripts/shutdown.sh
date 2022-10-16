#!/bin/bash

sudo service youtube stop
sudo service picam stop
sudo service nginx stop

if [ -z "$1" ]; then
    echo "No argument supplied"
    sudo shutdown now
else
    echo "$1"
    sudo reboot
fi
