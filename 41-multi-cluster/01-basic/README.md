# Basic Multi-Cluster Management

This example demonstrates a basic multi-cluster setup for a Kubernetes environment.

## What is Multi-Cluster Management?

**Multi-cluster management** is the process of managing multiple Kubernetes clusters as a single entity. This can be useful for a variety of reasons, such as scalability, isolation, and geographic distribution.

## Example in this Section

- `cluster-management.yaml`: This file defines several resources related to multi-cluster management.
  - A **ConfigMap** to store the kubeconfig files for two clusters.
  - A **Deployment** for a multi-cluster controller.
  - A **CronJob** for syncing resources across clusters.
  - A **Service** and a **Deployment** for a global application.

**Note:** The kubeconfig data in the `ConfigMap` are placeholders. You will need to replace them with the actual kubeconfig data for your clusters.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f cluster-management.yaml

# Check the status of the multi-cluster controller
kubectl get deployments -n multi-cluster

# Check the status of the cross-cluster sync CronJob
kubectl get cronjobs -n multi-cluster
```
