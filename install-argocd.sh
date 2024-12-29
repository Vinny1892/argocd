#! /bin/bash
create_secret.sh
helm upgrade --install argo-cd argo/argo-cd --version 7.7.11 --values argocd-helm/values.yml