#! /bin/bash

kubectl apply -f argo-apps/root/argocd-root-app.yml
kubectl apply -f argo-apps/root/argocd-homelab-root.yml