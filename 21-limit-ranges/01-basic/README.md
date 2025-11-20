# Basic Limit Range

This example demonstrates how to create a basic LimitRange to enforce resource constraints in a namespace.

## What is a Limit Range?

A **LimitRange** is a policy to constrain resource allocations (to Pods or Containers) in a namespace. It can enforce minimum, maximum, and default resource constraints.

## Example in this Section

- `container-limits.yaml`: This file defines a Namespace, a LimitRange, and a Pod.
  - The **Namespace** is named `limited-namespace`.
  - The **LimitRange** sets default, min, and max resource constraints for containers and pods in the `limited-namespace`.
  - The **Pod** is created in the `limited-namespace` and does not specify any resource requests or limits, so it will get the defaults from the `LimitRange`.

## Common Operations

```bash
# Create the Namespace, LimitRange, and Pod from the manifest file
kubectl apply -f container-limits.yaml

# Check the status of the LimitRange
kubectl get limitranges -n limited-namespace

# Describe the Pod to see the applied resource requests and limits
kubectl describe pod test-pod -n limited-namespace
```
