# Cluster Roles - Cluster-wide Permissions

A ClusterRole is a set of permissions that can be assigned to a user, group, or ServiceAccount. Unlike a Role, a ClusterRole is not namespaced and can be used to grant permissions to cluster-scoped resources, such as Nodes, as well as namespaced resources across all namespaces.

## Learning Path

### [01-basic](./01-basic/) - Cluster Role Fundamentals
- **Creating Cluster Roles**: Learn how to create a ClusterRole to define a set of permissions.
- **Cluster Role Bindings**: Learn how to bind a ClusterRole to a user, group, or ServiceAccount using a ClusterRoleBinding.
- **Cluster vs namespaced resources**: Understand the difference between cluster-scoped resources and namespaced resources.
- **Built-in Cluster Roles**: Learn about the built-in ClusterRoles that are provided by Kubernetes.

### [02-intermediate](./02-intermediate/) - Advanced Cluster Permissions
- **Aggregated Cluster Roles**: Use aggregated ClusterRoles to combine multiple ClusterRoles into a single ClusterRole.
- **Custom resource permissions**: Grant permissions to your custom resources using ClusterRoles.
- **Cross-namespace access**: Grant a user, group, or ServiceAccount access to resources in multiple namespaces.
- **Role aggregation rules**: Use role aggregation rules to automatically add rules to a ClusterRole from other ClusterRoles.

### [03-advanced](./03-advanced/) - Enterprise Cluster Security
- **Multi-tenant cluster roles**: Use ClusterRoles to manage the permissions of multiple tenants in a shared cluster.
- **Dynamic role management**: Dynamically grant permissions to users and groups based on their identity.
- **Compliance and auditing**: Audit your ClusterRoles to ensure that they are effective and compliant with your security policies.
- **Least privilege principles**: Follow the principle of least privilege when creating ClusterRoles to minimize the risk of security breaches.

## Scope Differences

- **Role**: A set of permissions that can be assigned to a user, group, or ServiceAccount. A Role is namespaced.
- **ClusterRole**: A set of permissions that can be assigned to a user, group, or ServiceAccount. A ClusterRole is not namespaced.
- **RoleBinding**: Binds a Role to a user, group, or ServiceAccount. A RoleBinding is namespaced.
- **ClusterRoleBinding**: Binds a ClusterRole to a user, group, or ServiceAccount. A ClusterRoleBinding is not namespaced.

## Quick Start

```bash
# Apply the ClusterRole and ClusterRoleBinding
kubectl apply -f 01-basic/cluster-admin-example.yaml

# Check the permissions of the user
kubectl auth can-i '*' '*' --as=my-admin-user
```