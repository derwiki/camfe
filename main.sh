#!/bin/bash

while true
do
  /bin/bash /home/pi/src/camfe/capture-upload.sh &
  sleep 60
done
