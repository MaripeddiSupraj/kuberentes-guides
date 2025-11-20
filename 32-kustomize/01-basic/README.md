# Basic Kustomize

This example demonstrates how to use Kustomize to customize a set of Kubernetes resources.

## What is Kustomize?

**Kustomize** is a tool for customizing Kubernetes configurations. It allows you to manage your application configuration in a declarative way, without using templates.

## Example in this Section

- `base-deployment.yaml`: This file defines a `Deployment`, a `Service`, and a `ConfigMap`.
- `kustomization.yaml`: This file customizes the resources in `base-deployment.yaml`.
  - It adds a `namePrefix` to all of the resources.
  - It changes the image tag of the `nginx` container.
  - It generates a `ConfigMap` and a `Secret`.
  - It patches the `Deployment` to add an environment variable.

## Common Operations

```bash
# Apply the Kustomize configuration
kubectl apply -k .

# Check the resources created by Kustomize
kubectl get all -l environment=development
```
