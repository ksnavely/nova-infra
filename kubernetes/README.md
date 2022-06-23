## Setup

You'll need a Kube config. `nova-infra/terraform/kube` will generate a kubeconfig when TF apply is run. Export this as `KUBECONFIG` with an absolute path specified. Also run `aws eks update-kubeconfig --name $KUBE_CLUSTER_NAME` which can be had from `aws eks list-clusters`.

Requirements:
 - kubectl
 - helm3

These can be installed with `asdf`.

## Usage

The `charts` directory is intended for helm-related management. `charts/install.sh` can be run after configuring `kubectl` to deploy Trino.
