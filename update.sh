#!/bin/sh

# Build
docker build . -t mytardis/k8s-jenkins-slave:latest

# Push
docker push mytardis/k8s-jenkins-slave:latest
