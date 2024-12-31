#! /bin/bash
helm upgrade --install argo-cd argo/argo-cd --version 7.7.11 --namespace argocd --create-namespace --values argocd-helm/values.yml