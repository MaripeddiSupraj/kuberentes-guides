# Basic ClusterRole

This example demonstrates how to create a basic ClusterRole and a ClusterRoleBinding to grant cluster-wide permissions to a ServiceAccount.

## What is a ClusterRole?

A **ClusterRole** is a set of permissions that can be assigned to a user, group, or ServiceAccount. Unlike a Role, a ClusterRole is not namespaced and can be used to grant permissions to cluster-scoped resources, such as Nodes, as well as namespaced resources across all namespaces.

## Example in this Section

- `cluster-admin-example.yaml`: This file defines two ServiceAccounts, two ClusterRoles, and two ClusterRoleBindings.
  - The first **ClusterRole** is named `cluster-reader` and grants read-only access to a variety of cluster resources.
  - The second **ClusterRole** is named `node-manager` and grants permission to manage Nodes.
  - The **ClusterRoleBindings** bind the ClusterRoles to the ServiceAccounts.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f cluster-admin-example.yaml

# Check the permissions of the ServiceAccounts
kubectl auth can-i list nodes --as=system:serviceaccount:kube-system:cluster-reader
kubectl auth can-i update nodes --as=system:serviceaccount:kube-system:node-manager
```
