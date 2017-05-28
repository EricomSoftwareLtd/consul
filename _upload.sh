#!/bin/sh

if [ -z "$1" ]; then
    TAG=`date +"%y%m%d-%H.%M"`
else
    TAG=$1
fi

docker tag "securebrowsing/shield-configuration" "securebrowsing/shield-configuration:"$TAG
docker push "securebrowsing/shield-configuration:"
