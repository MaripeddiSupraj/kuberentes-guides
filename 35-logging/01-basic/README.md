# Basic Logging with Fluentd

This example demonstrates how to deploy Fluentd as a DaemonSet to collect logs from all nodes in your cluster.

## What is Fluentd?

**Fluentd** is an open-source data collector for unified logging layer. It allows you to unify data collection and consumption for a better use and understanding of data.

## Example in this Section

- `fluentd-logging.yaml`: This file defines the resources needed to deploy Fluentd as a DaemonSet.
  - A **ServiceAccount** for Fluentd to use.
  - A **ClusterRole** and a **ClusterRoleBinding** to give Fluentd the necessary permissions.
  - A **ConfigMap** with the Fluentd configuration.
  - A **DaemonSet** to run the Fluentd log agent on every node in the cluster.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f fluentd-logging.yaml

# Check the status of the Fluentd DaemonSet
kubectl get daemonsets -n kube-system | grep fluentd

# Check the logs of the Fluentd Pods
kubectl logs -n kube-system -l name=fluentd
```
