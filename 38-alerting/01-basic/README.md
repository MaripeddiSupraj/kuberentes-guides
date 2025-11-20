# Basic Alerting with Prometheus

This example demonstrates how to configure alerting in Prometheus.

## What is Prometheus?

**Prometheus** is an open-source monitoring and alerting toolkit. It collects metrics from your applications and stores them in a time-series database. It also provides a powerful query language (PromQL) and a flexible alerting mechanism.

## Example in this Section

- `prometheus-alerts.yaml`: This file defines two ConfigMaps.
  - The first **ConfigMap** contains a set of Prometheus alert rules. These rules define the conditions under which an alert should be fired.
  - The second **ConfigMap** contains the configuration for the Prometheus AlertManager. The AlertManager is responsible for deduplicating, grouping, and routing alerts to the correct receiver.

## Before You Begin

This example requires Prometheus and the Prometheus AlertManager to be installed in your cluster.

## Common Operations

```bash
# Apply the ConfigMaps from the manifest file
kubectl apply -f prometheus-alerts.yaml

# Check the status of the ConfigMaps
kubectl get configmaps -n monitoring
```
