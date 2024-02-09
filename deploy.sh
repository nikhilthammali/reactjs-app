#!/bin/bash

sudo docker-compose up -d 

#pushing to dockerhub
sudo docker tag reactjsimg nikhilthammali/reactjs-dev:cicd
sudo docker push nikhilthammali/reactjs-dev:cicd

