# DaemonSets - Node-level Services

A DaemonSet ensures that all (or some) Nodes run a copy of a Pod. This is useful for deploying system-level services that need to run on every Node in the cluster.

## Learning Path

### [01-basic](./01-basic/) - DaemonSet Fundamentals
- **Creating DaemonSets**: Learn how to create a DaemonSet to run a Pod on every Node in the cluster.
- **Node selection**: Use node selectors to specify which Nodes a DaemonSet should run on.
- **System-level services**: Understand the common use cases for DaemonSets, such as log collection and monitoring.
- **DaemonSet vs Deployment**: Learn about the differences between DaemonSets and Deployments and when to use each.

### [02-intermediate](./02-intermediate/) - Advanced DaemonSet Patterns
- **Node affinity and selectors**: Use node affinity and more advanced selectors to control which Nodes a DaemonSet runs on.
- **Tolerations for system Pods**: Use tolerations to allow DaemonSets to run on tainted Nodes.
- **Resource management**: Set resource requests and limits for the Pods managed by a DaemonSet.
- **Update strategies**: Configure the update strategy for a DaemonSet to control how Pods are updated.

### [03-advanced](./03-advanced/) - Enterprise DaemonSet Management
- **Custom system services**: Build your own custom system services using DaemonSets.
- **Multi-architecture DaemonSets**: Create DaemonSets that can run on Nodes with different CPU architectures.
- **Security contexts for system Pods**: Set security contexts for the Pods managed by a DaemonSet to enhance security.
- **Monitoring and logging DaemonSets**: Set up monitoring and logging for your DaemonSets to ensure they are functioning correctly.

## Common Use Cases

- **Log collection**: Running a log collector agent like Fluentd or Filebeat on every Node.
- **Monitoring**: Running a monitoring agent like Prometheus Node Exporter on every Node.
- **Networking**: Running a CNI (Container Network Interface) plugin like Calico or Flannel on every Node.
- **Storage**: Running a storage driver or CSI (Container Storage Interface) plugin on every Node.

## Quick Start

```bash
# Create a simple DaemonSet
kubectl apply -f 01-basic/log-collector-daemonset.yaml

# Check the status of the DaemonSet
kubectl get daemonsets

# See the Pods created by the DaemonSet
kubectl get pods -l app=log-collector
```