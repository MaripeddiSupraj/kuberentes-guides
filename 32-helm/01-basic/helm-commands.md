# Basic Helm Commands

## Installation
```bash
# Install Helm
curl https://get.helm.sh/helm-v3.12.0-linux-amd64.tar.gz | tar xz
sudo mv linux-amd64/helm /usr/local/bin/

# Add repositories
helm repo add stable https://charts.helm.sh/stable
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
```

## Basic Operations
```bash
# Search charts
helm search repo nginx

# Install chart
helm install my-nginx bitnami/nginx

# List releases
helm list

# Get values
helm get values my-nginx

# Upgrade release
helm upgrade my-nginx bitnami/nginx --set replicaCount=3

# Rollback
helm rollback my-nginx 1

# Uninstall
helm uninstall my-nginx
```

## Chart Management
```bash
# Create new chart
helm create mychart

# Validate chart
helm lint mychart

# Package chart
helm package mychart

# Install local chart
helm install myapp ./mychart
```