# Basic Helm Commands

## Installation
```bash
# Install Helm (example for Linux)
curl https://get.helm.sh/helm-v3.12.0-linux-amd64.tar.gz | tar xz
sudo mv linux-amd64/helm /usr/local/bin/

# Add chart repositories
helm repo add stable https://charts.helm.sh/stable
helm repo add bitnami https://charts.bitnami.com/bitnami

# Update your local chart repository cache
helm repo update
```

## Basic Operations
```bash
# Search for a chart in the repositories
helm search repo nginx

# Install a chart to create a release
helm install my-nginx bitnami/nginx

# List all releases in the current namespace
helm list

# Get the values for a release
helm get values my-nginx

# Upgrade a release with a new set of values
helm upgrade my-nginx bitnami/nginx --set replicaCount=3

# Rollback a release to a previous revision
helm rollback my-nginx 1

# Uninstall a release
helm uninstall my-nginx
```

## Chart Management
```bash
# Create a new chart
helm create mychart

# Validate a chart for common errors
helm lint mychart

# Package a chart into a versioned chart archive
helm package mychart

# Install a local chart
helm install myapp ./mychart-0.1.0.tgz
```