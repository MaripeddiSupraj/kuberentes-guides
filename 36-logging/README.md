# Logging - Log Aggregation and Analysis

Logging is a critical part of running a production Kubernetes cluster. It provides visibility into the behavior of your applications and the health of your cluster.

## Learning Path

### [01-basic](./01-basic/) - Logging Fundamentals
- **Container logging basics**: Understand how containers write logs to standard output and standard error.
- **kubectl logs commands**: Use the `kubectl logs` command to view the logs of your Pods.
- **Log rotation and retention**: Learn about log rotation and retention policies.
- **Centralized logging concepts**: Understand the concept of centralized logging and why it is important.

### [02-intermediate](./02-intermediate/) - Log Aggregation
- **Fluentd/Fluent Bit deployment**: Deploy a log agent like Fluentd or Fluent Bit to collect logs from your cluster.
- **Elasticsearch and Kibana**: Use Elasticsearch to store your logs and Kibana to visualize them.
- **Log parsing and filtering**: Parse and filter your logs to extract meaningful information.
- **Multi-tenant logging**: Manage logs for multiple tenants in a shared cluster.

### [03-advanced](./03-advanced/) - Enterprise Logging
- **Log analytics and alerting**: Use log analytics to gain insights into your applications and create alerts to notify you when something goes wrong.
- **Compliance and audit logs**: Use logging to help you comply with security and governance policies.
- **Performance optimization**: Optimize the performance of your logging pipeline.
- **Long-term retention**: Store your logs for long periods of time for compliance and auditing purposes.

## Logging Stack Components

- **Log Agents**: A log agent is a tool that runs on each node in your cluster and collects logs from your applications. Examples include Fluentd, Fluent Bit, and Filebeat.
- **Storage**: A storage backend is used to store your logs. Examples include Elasticsearch, Loki, and CloudWatch.
- **Visualization**: A visualization tool is used to view and analyze your logs. Examples include Kibana and Grafana.
- **Processing**: A processing tool is used to parse, filter, and enrich your logs. Examples include Logstash and Vector.

## Quick Start

```bash
# Deploy a Fluentd log agent
kubectl apply -f 01-basic/fluentd-logging.yaml

# Check the status of the Fluentd DaemonSet
kubectl get daemonsets -n kube-system | grep fluentd
```