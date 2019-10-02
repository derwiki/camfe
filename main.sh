#!/bin/bash

user=$CAMBE_USER
pass=$CAMBE_PASS

while true
do
  raspistill -a -q100 -vf -hf -o /tmp/capt0000.jpg
  curl -F "image=@/tmp/capt0000.jpg" https://$user:$pass@cambe.herokuapp.com/upload
  sleep 1
done
