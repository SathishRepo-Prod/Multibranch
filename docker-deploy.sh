#!/bin/bash

version=Testing
env="Testing"

if sudo docker ps -a --format '{{.Names}}' | grep "${env}"
then
sudo docker stop ${env} && sudo docker rm ${env}
fi
sudo docker run -it -d -p 8000:8001 --name ${env} sathishdevops007/busapp:${version}
