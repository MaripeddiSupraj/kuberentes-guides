# Monitoring - Metrics and Observability

Monitoring is a critical part of running a production Kubernetes cluster. It provides visibility into the health of your cluster, the resource usage of your applications, and the performance of your services.

## Learning Path

### [01-basic](./01-basic/) - Monitoring Fundamentals
- **Metrics Server installation**: Learn how to install the Metrics Server to provide resource metrics for your cluster.
- **Resource metrics (CPU, memory)**: Understand the different types of resource metrics that are available in Kubernetes.
- **kubectl top commands**: Use the `kubectl top` command to view the resource usage of your nodes and pods.
- **Basic monitoring setup**: Set up a basic monitoring stack using Prometheus and Grafana.

### [02-intermediate](./02-intermediate/) - Advanced Monitoring
- **Prometheus and Grafana**: Use Prometheus and Grafana to collect, store, and visualize your metrics.
- **Custom metrics**: Expose custom metrics from your applications and collect them with Prometheus.
- **ServiceMonitor resources**: Use ServiceMonitors to automatically discover and scrape metrics from your services.
- **Alert rules**: Create alert rules in Prometheus to notify you when something goes wrong.

### [03-advanced](./03-advanced/) - Enterprise Monitoring
- **Multi-cluster monitoring**: Monitor multiple Kubernetes clusters from a single Prometheus instance.
- **Long-term storage**: Use a long-term storage solution like Thanos or Cortex to store your metrics for longer periods of time.
- **SLI/SLO monitoring**: Use monitoring to track your Service Level Indicators (SLIs) and Service Level Objectives (SLOs).
- **Compliance and governance**: Use monitoring to help you comply with security and governance policies.

## Monitoring Stack

- **Metrics Server**: A cluster-wide aggregator of resource usage data.
- **Prometheus**: An open-source monitoring and alerting toolkit.
- **Grafana**: An open-source platform for monitoring and observability.
- **AlertManager**: A component of Prometheus that handles alerts sent by client applications.

## Quick Start

```bash
# Install the Metrics Server
kubectl apply -f 01-basic/metrics-server.yaml

# Check the status of the Metrics Server
kubectl get pods -n kube-system | grep metrics-server

# Check the resource usage of your nodes
kubectl top nodes
```