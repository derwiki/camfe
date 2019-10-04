#!/bin/bash

source /home/pi/cambe-env.sh

while true
do
  /bin/bash /home/pi/src/camfe/capture-upload.sh &
  sleep 120
done
