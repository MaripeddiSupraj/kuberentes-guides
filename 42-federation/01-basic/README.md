# Basic Kubernetes Federation with Kubefed

This example demonstrates how to set up a basic Kubernetes Federation with Kubefed.

## What is Kubefed?

**Kubefed** is a tool for managing multiple Kubernetes clusters from a single control plane. It allows you to create and manage resources across multiple clusters, and to define policies for how those resources should be placed and managed.

## Example in this Section

- `federation-setup.yaml`: This file defines the resources needed to set up a Kubernetes Federation with Kubefed.
  - A **Namespace**, a **ServiceAccount**, a **ClusterRole**, and a **ClusterRoleBinding** for the federation controller.
  - **KubeFedCluster** resources to register two clusters with the federation.
  - **Secret**s to store the tokens for the clusters.
  - A **FederatedDeployment** and a **FederatedService** to deploy an application across the two clusters.

**Note:** The `caBundle` and `token` data in this example are placeholders. You will need to replace them with the actual `caBundle` and `token` data for your clusters.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f federation-setup.yaml

# Check the status of the KubeFedClusters
kubectl get kubefedclusters -n kube-federation-system

# Check the status of the FederatedDeployment
kubectl get federateddeployments
```
