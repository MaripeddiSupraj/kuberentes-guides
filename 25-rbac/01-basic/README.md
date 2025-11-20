# Basic RBAC

This example demonstrates how to create a basic Role-Based Access Control (RBAC) configuration to grant permissions to a ServiceAccount.

## What is RBAC?

**Role-Based Access Control (RBAC)** is a method of regulating access to computer or network resources based on the roles of individual users within an enterprise.

## Example in this Section

- `service-account-rbac.yaml`: This file defines a ServiceAccount, a Role, a RoleBinding, and a Pod.
  - The **ServiceAccount** is named `pod-reader`.
  - The **Role** is named `pod-reader` and grants permission to get, watch, and list Pods.
  - The **RoleBinding** binds the `pod-reader` Role to the `pod-reader` ServiceAccount.
  - The **Pod** is named `rbac-test-pod` and uses the `pod-reader` ServiceAccount.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f service-account-rbac.yaml

# Check the permissions of the ServiceAccount
kubectl auth can-i list pods --as=system:serviceaccount:default:pod-reader

# Exec into the Pod and try to list Pods
kubectl exec -it rbac-test-pod -- kubectl get pods
```
