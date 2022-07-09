#!/bin/bash
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo add jetstack https://charts.jetstack.io # cert-manager
helm repo add trino https://trinodb.github.io/charts/
helm repo add bitnami https://charts.bitnami.com/bitnami # mongodb, grafana but many charts available
helm repo add datadog https://helm.datadoghq.com
helm repo add pingcap https://charts.pingcap.org/

helm repo update
