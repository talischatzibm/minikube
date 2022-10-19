#!/bin/sh
minikube start
docker build -t talischatz/newimage .
docker push talischatz/newimage
kubectl apply -f appiversion.yaml
minikube service bb-entrypoint --url