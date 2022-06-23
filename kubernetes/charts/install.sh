#!/bin/bash

# Repos
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo add jetstack https://charts.jetstack.io # cert-manager
helm repo add trino https://trinodb.github.io/charts/
helm repo update

helm install nginx-ingress nginx-stable/nginx-ingress

# x509 Certificate management
helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.5.3 --set installCRDs=true

# Trino, SQL at scale
helm install nt-trino trino/trino --version 0.8.0

# kdevops.com
helm install kdevops-website kdevops-website/ --values kdevops-website/values.yaml


