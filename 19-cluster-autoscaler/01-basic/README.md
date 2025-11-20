# Basic Cluster Autoscaler

This example demonstrates how to create the resources needed to run the Cluster Autoscaler.

## What is the Cluster Autoscaler?

The **Cluster Autoscaler** is a tool that automatically adjusts the size of your Kubernetes cluster by adding or removing nodes based on the resource requirements of your Pods.

## Example in this Section

- `cluster-autoscaler.yaml`: This file defines the resources needed to run the Cluster Autoscaler.
  - A **ServiceAccount** for the Cluster Autoscaler to use.
  - A **ClusterRole** and **ClusterRoleBinding** to give the Cluster Autoscaler the necessary permissions.
  - A **Deployment** to run the Cluster Autoscaler. The command-line arguments in this example are for AWS. You will need to change them for your cloud provider.

## Before You Begin

This example requires you to be running your Kubernetes cluster on a cloud provider that is supported by the Cluster Autoscaler, such as AWS, GCP, or Azure.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f cluster-autoscaler.yaml

# Check the status of the Cluster Autoscaler
kubectl get pods -n kube-system | grep cluster-autoscaler
```
