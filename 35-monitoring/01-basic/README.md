# Basic Monitoring with Metrics Server

This example demonstrates how to deploy the Metrics Server to your Kubernetes cluster.

## What is the Metrics Server?

The **Metrics Server** is a cluster-wide aggregator of resource usage data. It collects resource metrics from the Kubelets on each node and exposes them through the Kubernetes API server. The Metrics Server is a prerequisite for the Horizontal Pod Autoscaler (HPA) and the Vertical Pod Autoscaler (VPA).

## Example in this Section

- `metrics-server.yaml`: This file defines the resources needed to deploy the Metrics Server.
  - A **ServiceAccount** for the Metrics Server to use.
  - **ClusterRoles** and a **ClusterRoleBinding** to give the Metrics Server the necessary permissions.
  - A **Deployment** to run the Metrics Server.
  - A **Service** to expose the Metrics Server.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f metrics-server.yaml

# Check the status of the Metrics Server
kubectl get pods -n kube-system | grep metrics-server

# Check the resource usage of your nodes
kubectl top nodes

# Check the resource usage of your pods
kubectl top pods
```
