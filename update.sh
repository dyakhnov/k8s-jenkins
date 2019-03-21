#!/bin/sh

docker build . -t dyakhnov/jenkins:latest
docker push dyakhnov/jenkins:latest
