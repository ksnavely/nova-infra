#!/bin/bash
helm repo add trino https://trinodb.github.io/charts/
helm install nt-trino trino/trino --version 0.8.0


