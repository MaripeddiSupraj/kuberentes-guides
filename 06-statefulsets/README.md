# StatefulSets - Stateful Applications

StatefulSets are used to manage stateful applications, providing guarantees about the ordering and uniqueness of a set of Pods. They are ideal for applications that require stable network identities and persistent storage.

## Learning Path

### [01-basic](./01-basic/) - StatefulSet Fundamentals
- **Creating StatefulSets**: Learn how to create a StatefulSet to manage a set of stateful Pods.
- **Stable network identities**: Understand how StatefulSets provide stable hostnames and network identities for Pods.
- **Ordered deployment and scaling**: Explore how StatefulSets perform ordered, graceful deployment and scaling.
- **Persistent volume claims**: Learn how StatefulSets use PersistentVolumeClaims to provide stable storage for Pods.

### [02-intermediate](./02-intermediate/) - Stateful Application Patterns
- **Database deployments**: Deploy a database like PostgreSQL or MySQL using a StatefulSet.
- **Headless services**: Use headless services to provide a stable network identity for each Pod in a StatefulSet.
- **Update strategies**: Configure the update strategy for a StatefulSet to control how Pods are updated.
- **Storage management**: Manage the persistent storage associated with a StatefulSet.

### [03-advanced](./03-advanced/) - Enterprise Stateful Patterns
- **Multi-master databases**: Deploy a multi-master database using a StatefulSet.
- **Cross-zone replication**: Replicate a stateful application across multiple availability zones for high availability.
- **Backup and restore strategies**: Implement backup and restore strategies for your stateful applications.
- **Custom stateful operators**: Build your own custom operators to manage stateful applications.

## Key Features

- **Stable Pod Names**: Pods in a StatefulSet have a unique, predictable name, such as `pod-0`, `pod-1`, etc.
- **Stable Network IDs**: Each Pod in a StatefulSet has a stable DNS name that can be used for service discovery.
- **Ordered Operations**: StatefulSets perform ordered, graceful deployment, scaling, and updates.
- **Persistent Storage**: StatefulSets can be configured to automatically create a PersistentVolumeClaim for each Pod, providing stable storage.

## StatefulSet vs. Deployment

| Feature              | StatefulSet                               | Deployment                               |
|----------------------|-------------------------------------------|------------------------------------------|
| **Pod Identity**     | Stable and unique                         | Ephemeral and interchangeable            |
| **Storage**          | Stable and persistent                     | Shared and ephemeral                     |
| **Scaling**          | Ordered and graceful                      | Unordered                                |
| **Use Case**         | Stateful apps (databases, etc.)           | Stateless apps (web servers, etc.)       |

## Quick Start

```bash
# Create a simple StatefulSet
kubectl apply -f 01-basic/postgres-statefulset.yaml

# Check the status of the StatefulSet
kubectl get statefulsets

# See the Pods created by the StatefulSet
kubectl get pods -l app=postgres
```