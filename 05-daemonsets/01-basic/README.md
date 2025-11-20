# Basic DaemonSets

Learn the fundamentals of DaemonSets for running a copy of a Pod on every Node in your cluster.

## What is a DaemonSet?

A **DaemonSet** is a Kubernetes object that ensures that all (or a subset of) Nodes run a copy of a Pod. This is useful for deploying system-level services that need to be present on every Node, such as log collectors, monitoring agents, or networking plugins.

## Examples in this Section

- `log-collector-daemonset.yaml`: A basic DaemonSet manifest that deploys a Fluentd log collector Pod on every Node in the cluster.

## Key Concepts

- **Node Coverage**: A DaemonSet ensures that one Pod is running on each Node that matches its node selector.
- **System Services**: DaemonSets are ideal for deploying system-level services that provide essential functionality to the cluster, such as monitoring, logging, and networking.
- **Tolerations**: DaemonSets often use tolerations to run on tainted Nodes, such as the master nodes.

## DaemonSet vs. Deployment

| Feature      | DaemonSet                               | Deployment                               |
|--------------|-----------------------------------------|------------------------------------------|
| **Purpose**  | Runs one Pod per Node                     | Manages a set of identical Pods          |
| **Scaling**  | Scales with the number of Nodes         | Manually or automatically scaled         |
- **Use Case** | System-level services (logging, etc.) | Stateless applications (web servers, etc.) |

## Common Operations

```bash
# Create a DaemonSet from a manifest file
kubectl apply -f log-collector-daemonset.yaml

# Check the status of the DaemonSet
kubectl get daemonset

# Get detailed information about the DaemonSet
kubectl describe daemonset log-collector

# View the logs from all Pods managed by the DaemonSet
kubectl logs -l app=log-collector
```