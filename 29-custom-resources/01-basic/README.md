# Basic Custom Resource Definition

This example demonstrates how to create a basic CustomResourceDefinition (CRD) and a few instances of the custom resource.

## What is a Custom Resource Definition?

A **CustomResourceDefinition (CRD)** is a powerful feature in Kubernetes that allows you to extend the Kubernetes API with your own custom resource types.

## Example in this Section

- `webapp-crd.yaml`: This file defines a CustomResourceDefinition for a `WebApp` resource and two instances of the `WebApp` custom resource.
  - The **CustomResourceDefinition** defines the schema for the `WebApp` resource, including a `spec` and a `status` field. It also defines subresources for `status` and `scale`.
  - The two **WebApp** instances are named `my-webapp` and `api-server`.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f webapp-crd.yaml

# Check the status of the CustomResourceDefinition
kubectl get crds

# Check the status of the Custom Resources
kubectl get webapps

# Scale the my-webapp Custom Resource
kubectl scale webapp my-webapp --replicas=5
```
