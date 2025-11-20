# Basic Tracing with Jaeger and OpenTelemetry

This example demonstrates how to set up a basic distributed tracing pipeline using Jaeger and the OpenTelemetry Collector.

## What is Jaeger?

**Jaeger** is an open-source, end-to-end distributed tracing system that allows you to monitor and troubleshoot transactions in complex distributed systems.

## What is OpenTelemetry?

**OpenTelemetry** is an open-source observability framework that provides a set of APIs, libraries, agents, and instrumentation to help you collect and export telemetry data (metrics, logs, and traces) from your applications.

## Example in this Section

- `jaeger-tracing.yaml`: This file defines the resources needed to deploy Jaeger and an OpenTelemetry Collector.
  - A **Deployment** and a **Service** for Jaeger.
  - A **Deployment** and a **ConfigMap** for the OpenTelemetry Collector.
  - A **Deployment** for a sample application that is configured to send traces to the Jaeger agent.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f jaeger-tracing.yaml

# Check the status of the Jaeger and OpenTelemetry Collector Pods
kubectl get pods -n observability

# Port-forward the Jaeger UI
kubectl port-forward -n observability svc/jaeger 16686:16686

# Access the Jaeger UI at http://localhost:16686
```
