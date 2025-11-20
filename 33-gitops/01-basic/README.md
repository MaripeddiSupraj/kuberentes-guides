# Basic GitOps with Argo CD

This example demonstrates how to install Argo CD and use it to deploy a sample application.

## What is Argo CD?

**Argo CD** is a declarative, GitOps continuous delivery tool for Kubernetes. It allows you to manage your Kubernetes cluster and applications by using Git as a single source of truth.

## Example in this Section

- `argocd-install.yaml`: This file defines the resources needed to install Argo CD and deploy a sample application.
  - A **Namespace**, a **ServiceAccount**, a **Deployment**, and a **Service** for the Argo CD server.
  - An **Application** custom resource to deploy a sample application from a public Git repository.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f argocd-install.yaml

# Get the initial admin password for Argo CD
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

# Access the Argo CD UI
kubectl port-forward -n argocd svc/argocd-server 8080:443
```
