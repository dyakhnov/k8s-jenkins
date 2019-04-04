#!/bin/sh

# Build
docker build . -t mytardis/k8s-jenkins:latest

# Push
docker push mytardis/k8s-jenkins:latest

# Update
kubectl -n jenkins scale statefulset.apps/jenkins --replicas=0
sleep 3
kubectl -n jenkins scale statefulset.apps/jenkins --replicas=1
