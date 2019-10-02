#!/bin/bash

user=$CAMBE_USER
pass=$CAMBE_PASS
host=$CAMBE_HOST

raspistill -q 7 -vf -hf -o /tmp/capt0000.jpg && echo " captured" >> /var/log/capture-upload.log
curl -F "host=$CAMBE_HOST" \
     -F "image=@/tmp/capt0000.jpg" \
     https://$user:$pass@cambe.herokuapp.com/upload && echo " uploaded" >> /var/log/capture-upload.log
