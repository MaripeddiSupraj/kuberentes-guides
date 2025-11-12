# Cluster Roles - Cluster-wide Permissions

Cluster Roles define permissions that apply across the entire cluster, not limited to a single namespace.

## Learning Path

### [01-basic](./01-basic/) - Cluster Role Fundamentals
- Creating Cluster Roles
- Cluster Role Bindings
- Cluster vs namespaced resources
- Built-in Cluster Roles

### [02-intermediate](./02-intermediate/) - Advanced Cluster Permissions
- Aggregated Cluster Roles
- Custom resource permissions
- Cross-namespace access
- Role aggregation rules

### [03-advanced](./03-advanced/) - Enterprise Cluster Security
- Multi-tenant cluster roles
- Dynamic role management
- Compliance and auditing
- Least privilege principles

## Scope Differences

- **Role** - Namespace-scoped permissions
- **ClusterRole** - Cluster-wide permissions
- **RoleBinding** - Grants Role in namespace
- **ClusterRoleBinding** - Grants ClusterRole cluster-wide