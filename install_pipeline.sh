#!/bin/bash


#kubectl apply -f https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
#kubectl apply -f https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
#kubectl apply -f https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml
#kubectl apply -f https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml


kubectl apply -f build-docker-image-from-git-source.yaml
kubectl apply -f rbac.yaml
kubectl apply -f secret.yaml
kubectl apply -f pipeline.yaml
kubectl apply -f eventlistener.yaml
kubectl apply -f triggertemplate.yaml
kubectl apply -f triggerbinding.yaml
kubectl apply -f tekton-ambassador.yaml

#kubectl apply -f build-docker-image-from-git-source-task-run.yaml
#tkn taskrun logs build-docker-image-from-git-source-task-run


