#!/bin/bash

# Trino, SQL at scale
helm repo add trino https://trinodb.github.io/charts/
helm install nt-trino trino/trino --version 0.8.0

# kdevops.com
helm install kdevops-website kdevops-website/ --values kdevops-website/values.yaml


