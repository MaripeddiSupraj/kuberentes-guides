# Role-Based Access Control (RBAC)

Role-Based Access Control (RBAC) is a method of regulating access to computer or network resources based on the roles of individual users within an enterprise.

## Learning Path

### [01-basic](./01-basic/) - RBAC Fundamentals
- **ServiceAccounts**: Learn how to create a ServiceAccount for your applications.
- **Roles and ClusterRoles**: Understand the difference between Roles and ClusterRoles.
- **RoleBindings and ClusterRoleBindings**: Learn how to bind Roles and ClusterRoles to users, groups, and ServiceAccounts.

### [02-intermediate](./02-intermediate/) - Advanced RBAC Patterns
- **Aggregated ClusterRoles**: Use aggregated ClusterRoles to combine multiple ClusterRoles into a single ClusterRole.
- **Dynamic RBAC**: Use dynamic RBAC to grant permissions to users and groups based on their identity.
- **RBAC for Custom Resources**: Use RBAC to control access to your custom resources.

### [03-advanced](./03-advanced/) - Enterprise RBAC Management
- **RBAC Auditing**: Audit your RBAC policies to ensure that they are effective.
- **RBAC Best Practices**: Learn about best practices for managing RBAC in a large organization.
- **RBAC Automation**: Automate the management of your RBAC policies.

## RBAC Components

- **Role**: A set of permissions that can be assigned to a user, group, or ServiceAccount. A Role is namespaced.
- **ClusterRole**: A set of permissions that can be assigned to a user, group, or ServiceAccount. A ClusterRole is not namespaced.
- **RoleBinding**: Binds a Role to a user, group, or ServiceAccount. A RoleBinding is namespaced.
- **ClusterRoleBinding**: Binds a ClusterRole to a user, group, or ServiceAccount. A ClusterRoleBinding is not namespaced.

## Quick Start

```bash
# Apply the RBAC resources
kubectl apply -f 01-basic/service-account-rbac.yaml

# Check the permissions of the ServiceAccount
kubectl auth can-i list pods --as=system:serviceaccount:default:pod-reader
```
