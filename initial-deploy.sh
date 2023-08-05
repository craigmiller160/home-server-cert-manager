#!/bin/sh

helm install cert-manager ./deploy/chart --kube-context=microk8s --wait --timeout 5m --namespace infra-prod --values ./deploy/chart/values.yml --set cert-manager.installCRDs=true