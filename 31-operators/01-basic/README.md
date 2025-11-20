# Basic Operator

This example demonstrates the resources needed to create a basic Operator.

## What is an Operator?

An **Operator** is a method of packaging, deploying, and managing a Kubernetes application. A Kubernetes application is an application that is both deployed on Kubernetes and managed using the Kubernetes APIs and `kubectl` tooling.

## Example in this Section

- `simple-operator.yaml`: This file defines the resources needed to create a basic Operator for a `Database` resource.
  - A **CustomResourceDefinition** for the `Database` resource.
  - A **ServiceAccount**, **ClusterRole**, and **ClusterRoleBinding** for the Operator.
  - An instance of the **Database** custom resource.

**Note:** This example only defines the resources for the Operator. The actual Operator logic (the custom controller) is not included.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f simple-operator.yaml

# Check the status of the CustomResourceDefinition
kubectl get crds

# Check the status of the Custom Resource
kubectl get databases
```
