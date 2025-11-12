# Basic DaemonSets

Learn DaemonSet fundamentals for running Pods on every node.

## Examples

- `log-collector-daemonset.yaml` - Fluentd log collection on all nodes

## Key Concepts

- **Node Coverage** - One Pod per node
- **System Services** - Monitoring, logging, networking
- **Tolerations** - Run on master/tainted nodes

## Commands

```bash
# Create DaemonSet
kubectl apply -f log-collector-daemonset.yaml

# Check DaemonSet status
kubectl get daemonset
kubectl describe daemonset log-collector

# View logs from all nodes
kubectl logs -l app=log-collector
```