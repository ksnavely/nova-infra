#!/bin/bash

helm install nginx-ingress nginx-ingress/

# x509 Certificate management
helm install cert-manager cert-manager/ --namespace cert-manager --create-namespace --version v1.5.3 --set installCRDs=true

# Trino, SQL at scale
helm install nt-trino trino/

if [ -z "$MONGODB_ROOT_PASSWORD" -o -z "$MONGO_USR" -o -z "$MONGO_PW" ]; then
  echo "Cowardly refusing to configure MongoDB without auth config."
else
  helm install mongo001 mongodb/ --set "auth.rootPassword=$MONGO_ROOT_PASSWORD,auth.username=$MONGO_USR,auth.password=$MONGO_PW,auth.database=ktest"
fi

# kdevops.com
helm install kdevops-website kdevops-website/ --values kdevops-website/values.yaml --set website_json_conf="`cat kdevops-website/website.json | base64`"


