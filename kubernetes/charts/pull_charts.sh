#!/bin/bash

helm pull --untar nginx-stable/nginx-ingress

# x509 Certificate management
helm pull --untar jetstack/cert-manager

# Trino, SQL at scale
helm pull --untar trino/trino

