# Resource Quotas - Namespace Resource Limits

A ResourceQuota provides constraints that limit aggregate resource consumption per namespace. It can limit the quantity of objects that can be created in a namespace by type, as well as the total amount of compute resources that may be consumed by resources in that namespace.

## Learning Path

### [01-basic](./01-basic/) - Resource Quota Fundamentals
- **Creating Resource Quotas**: Learn how to create a ResourceQuota to limit the resources that can be consumed in a namespace.
- **CPU and memory limits**: Limit the total amount of CPU and memory that can be consumed by all Pods in a namespace.
- **Object count limits**: Limit the number of objects of a certain type that can be created in a namespace, such as Pods, Services, and Secrets.
- **Storage quotas**: Limit the total amount of storage that can be consumed by PersistentVolumeClaims in a namespace.

### [02-intermediate](./02-intermediate/) - Advanced Quota Management
- **Priority class quotas**: Limit the number of Pods of a certain priority class that can be created in a namespace.
- **Scope selectors**: Use scope selectors to apply a ResourceQuota to a specific set of resources in a namespace.
- **Quota monitoring**: Monitor the usage of your ResourceQuotas to ensure that you are not exceeding your limits.
- **Multi-tenant resource management**: Use ResourceQuotas to manage the resources of multiple tenants in a shared cluster.

### [03-advanced](./03-advanced/) - Enterprise Resource Management
- **Hierarchical quotas**: Use hierarchical quotas to manage the resources of a large organization with multiple teams and projects.
- **Dynamic quota adjustment**: Automatically adjust your ResourceQuotas based on the needs of your applications.
- **Cost allocation**: Use ResourceQuotas to allocate the cost of your Kubernetes cluster to different teams and projects.
- **Resource governance**: Use ResourceQuotas to enforce resource governance policies in your organization.

## Quota Types

- **Compute Resources**: Limits on the total amount of CPU and memory that can be consumed by all Pods in a namespace.
- **Storage Resources**: Limits on the total amount of storage that can be consumed by PersistentVolumeClaims in a namespace.
- **Object Counts**: Limits on the number of objects of a certain type that can be created in a namespace.
- **Extended Resources**: Limits on custom resources.

## Quick Start

```bash
# Create a ResourceQuota
kubectl apply -f 01-basic/namespace-quota.yaml

# Check the status of the ResourceQuota
kubectl get resourcequotas
```