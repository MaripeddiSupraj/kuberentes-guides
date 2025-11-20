# Basic Helm

This section provides a quick reference for basic Helm commands.

## What is Helm?

**Helm** is a package manager for Kubernetes that helps you manage Kubernetes applications. Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

## Commands in this Section

- `helm-commands.md`: A markdown file that contains a list of basic Helm commands for installation, basic operations, and chart management.

## Key Concepts

- **Chart**: A Helm package. It contains all of the resource definitions necessary to run an application, tool, or service inside of a Kubernetes cluster.
- **Repository**: A place where charts can be collected and shared.
- **Release**: An instance of a chart running in a Kubernetes cluster.

## Common Operations

The `helm-commands.md` file in this directory contains a list of common Helm commands. Here are a few examples:

```bash
# Search for a chart
helm search repo nginx

# Install a chart
helm install my-nginx bitnami/nginx

# List all releases
helm list

# Uninstall a release
helm uninstall my-nginx
```
