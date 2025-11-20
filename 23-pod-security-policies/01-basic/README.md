# Pod Security Policy Migration

This example demonstrates the migration from the deprecated Pod Security Policies (PSPs) to the modern Pod Security Standards (PSS).

## What are Pod Security Policies?

**Pod Security Policies (PSPs)** were a cluster-level resource that controlled security-sensitive aspects of the pod specification. They were deprecated in Kubernetes v1.21 and have been **removed** in v1.25.

## What are Pod Security Standards?

**Pod Security Standards (PSS)** are a set of built-in security policies that are applied at the namespace level. They provide three different levels of security: `privileged`, `baseline`, and `restricted`.

## Example in this Section

- `psp-migration.yaml`: This file provides a comparison of a legacy PSP, the modern Pod Security Standards, and an OPA Gatekeeper policy.
  - **Legacy PSP Example**: A `PodSecurityPolicy` resource that defines a restricted security policy. **DO NOT USE THIS IN PRODUCTION.**
  - **Modern Replacement**: A `Namespace` that is configured to enforce the `restricted` Pod Security Standard.
  - **Secure Pod Example**: A `Pod` that is configured to meet the `restricted` Pod Security Standard.
  - **Alternative**: An `OPA Gatekeeper` policy that enforces a similar security policy.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f psp-migration.yaml

# Check the labels on the namespace
kubectl get namespace secure-namespace --show-labels

# Check the status of the secure pod
kubectl get pod secure-pod -n secure-namespace
```
