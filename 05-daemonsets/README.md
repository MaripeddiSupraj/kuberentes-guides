# DaemonSets - Node-level Services

DaemonSets ensure that all (or some) nodes run a copy of a Pod, typically for system-level services.

## Learning Path

### [01-basic](./01-basic/) - DaemonSet Fundamentals
- Creating DaemonSets
- Node selection
- System-level services
- DaemonSet vs Deployment

### [02-intermediate](./02-intermediate/) - Advanced DaemonSet Patterns
- Node affinity and selectors
- Tolerations for system Pods
- Resource management
- Update strategies

### [03-advanced](./03-advanced/) - Enterprise DaemonSet Management
- Custom system services
- Multi-architecture DaemonSets
- Security contexts for system Pods
- Monitoring and logging DaemonSets

## Common Use Cases

- **Log collection** - Fluentd, Filebeat
- **Monitoring** - Node exporters, monitoring agents
- **Networking** - CNI plugins, kube-proxy
- **Storage** - Storage drivers, CSI plugins