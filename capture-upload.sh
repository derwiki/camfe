#!/bin/bash

user=$CAMBE_USER
pass=$CAMBE_PASS

raspistill -vf -hf -o /tmp/capt0000.jpg
echo captured
curl -F "image=@/tmp/capt0000.jpg" https://$user:$pass@cambe.herokuapp.com/upload
echo uploaded
