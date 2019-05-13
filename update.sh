#!/bin/sh

# Build
docker build . -t mytardis/k8s-jenkins-decrypt:latest

# Push
docker push mytardis/k8s-jenkins-decrypt:latest
