#!/bin/bash

DEST_DIR=/home/pi/picam
SHM_DIR=/run/shm

mkdir -p $SHM_DIR/rec
mkdir -p $SHM_DIR/hooks
mkdir -p $SHM_DIR/state
mkdir -p $DEST_DIR/archive

# for running from /etc/rc.local
chown pi:pi $DEST_DIR/archive
chown pi:pi $SHM_DIR/rec
chown pi:pi $SHM_DIR/hooks
chown pi:pi $SHM_DIR/state

ln -sfn $DEST_DIR/archive $SHM_DIR/rec/archive
ln -sfn $SHM_DIR/rec $DEST_DIR/rec
ln -sfn $SHM_DIR/hooks $DEST_DIR/hooks
ln -sfn $SHM_DIR/state $DEST_DIR/state
