#!/bin/bash

user=$CAMBE_USER
pass=$CAMBE_PASS

while true
do
  bash capture-upload.sh &
  sleep 60
done
