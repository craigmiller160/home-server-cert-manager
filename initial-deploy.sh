#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Must provide command"
  exit 1
fi

helm $1 \
  cert-manager \
  ./deploy/chart \
  --kube-context=microk8s \
  --wait \
  --timeout 5m \
  --namespace infra-prod \
  --values ./deploy/chart/values.yml \
  --set cert-manager.installCRDs=true