# Basic Resource Quota

This example demonstrates how to create a basic ResourceQuota to limit the resources that can be consumed in a namespace.

## What is a Resource Quota?

A **ResourceQuota** is a Kubernetes object that provides constraints that limit aggregate resource consumption per namespace. It can limit the quantity of objects that can be created in a namespace by type, as well as the total amount of compute resources that may be consumed by resources in that namespace.

## Example in this Section

- `namespace-quota.yaml`: This file defines a Namespace, a ResourceQuota, and a Deployment.
  - The **Namespace** is named `development`.
  - The **ResourceQuota** sets limits on the CPU, memory, storage, and number of objects that can be created in the `development` namespace.
  - The **Deployment** is created in the `development` namespace and has resource requests and limits that are within the quota.

## Common Operations

```bash
# Create the Namespace, ResourceQuota, and Deployment from the manifest file
kubectl apply -f namespace-quota.yaml

# Check the status of the ResourceQuota
kubectl get resourcequotas -n development

# Describe the ResourceQuota to see its usage
kubectl describe resourcequotas dev-quota -n development
```
