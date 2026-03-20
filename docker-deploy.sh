#!/bin/bash

version=producation
env="producation"

if sudo docker ps -a --format '{{.Names}}' | grep "${env}"
then
sudo docker stop ${env} && sudo docker rm ${env}
fi
sudo docker run -it -d -p 8002:8001 --name ${env} sathishdevops007/busapp:${version}
