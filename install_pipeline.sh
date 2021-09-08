#!/bin/bash

kubectl apply -f skaffold-git.yaml
kubectl apply -f skaffold-image-leeroy-web.yaml
kubectl apply -f build-docker-image-from-git-source.yaml
kubectl apply -f build-docker-image-from-git-source-task-run.yaml
#tkn taskrun logs build-docker-image-from-git-source-task-run


