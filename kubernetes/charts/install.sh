#!/bin/bash

helm install nginx-ingress nginx-ingress/

# x509 Certificate management
helm install cert-manager cert-manager/ --namespace cert-manager --create-namespace --version v1.5.3 --set installCRDs=true

# Trino, SQL at scale
helm install nt-trino trino/

# kdevops.com
helm install kdevops-website kdevops-website/ --values kdevops-website/values.yaml


