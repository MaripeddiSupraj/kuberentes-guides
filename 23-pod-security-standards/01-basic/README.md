# Basic Pod Security Standards

This example demonstrates how to use Pod Security Standards to enforce security policies on Pods.

## What are Pod Security Standards?

**Pod Security Standards (PSS)** are a set of built-in security policies that are applied at the namespace level. They provide three different levels of security: `privileged`, `baseline`, and `restricted`.

## Example in this Section

- `security-levels.yaml`: This file defines two Namespaces and a Pod.
  - The first **Namespace** is named `restricted-ns` and is configured to enforce the `restricted` Pod Security Standard.
  - The second **Namespace** is named `baseline-ns` and is configured to enforce the `baseline` Pod Security Standard.
  - The **Pod** is named `secure-pod` and is deployed to the `restricted-ns`. It is configured to meet the `restricted` Pod Security Standard.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f security-levels.yaml

# Check the labels on the namespaces
kubectl get namespaces --show-labels

# Check the status of the secure pod
kubectl get pod secure-pod -n restricted-ns
```
