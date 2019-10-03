#!/bin/bash

user=$CAMBE_USER
pass=$CAMBE_PASS
host=$CAMBE_HOST

/usr/bin/raspistill --annotate 12 -q 9 -vf -hf -o /tmp/capt0000.jpg &>/dev/null
curl -F "host=$CAMBE_HOST" \
     -F "image=@/tmp/capt0000.jpg" \
     https://$user:$pass@cambe.herokuapp.com/upload &>/dev/null
