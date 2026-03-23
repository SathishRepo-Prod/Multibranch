#!/bin/bash

version=Testing

sudo docker build -t sathishdevops007/busapp:${version} -f /home/ansible/app/Dockerfile
sudo docker push sathishdevops007/busapp:${version}
