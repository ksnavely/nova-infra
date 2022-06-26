#!/bin/bash

helm upgrade nginx-ingress nginx-ingress/

# x509 Certificate management
helm upgrade cert-manager cert-manager/ --namespace cert-manager --create-namespace --version v1.5.3 --set installCRDs=true

# Trino, SQL at scale
helm upgrade nt-trino trino/

# kdevops.com
helm upgrade kdevops-website kdevops-website/ --values kdevops-website/values.yaml --set website_json_conf="`cat kdevops-website/website.json | base64`"


