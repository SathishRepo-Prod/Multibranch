#!/bin/bash

version=Testing

cd /home/ansible/app
ls -lrt /home/ansible/app
sudo docker build -t sathishdevops007/busapp:${version} .
sudo docker push sathishdevops007/busapp:${version}
