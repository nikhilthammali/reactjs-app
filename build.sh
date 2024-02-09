#!/bin/bash

#login into dockerhub:
sudo docker login -u $DOCKER_USER -p $DOCKER_PASS

#docker image build command 

sudo docker build -f Dockerfile -t reactjsimg . 

sudo docker run -itd --name reactjscontainer -p 3000:80 reactjsimg 

