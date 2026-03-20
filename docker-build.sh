#!/bin/bash

version=development

sudo docker build -t sathishdevops007/busapp:${version} .
sudo docker push sathishdevops007/busapp:${version}
