# Basic Horizontal Pod Autoscaler

This example demonstrates how to create a basic Horizontal Pod Autoscaler (HPA) to automatically scale a Deployment based on CPU utilization.

## What is a Horizontal Pod Autoscaler?

The **Horizontal Pod Autoscaler (HPA)** is a Kubernetes object that automatically scales the number of Pods in a replication controller, deployment, replica set or stateful set based on observed CPU utilization (or, with custom metrics support, on some other application-provided metrics).

## Example in this Section

- `hpa-example.yaml`: This file defines a Deployment, a Service, and a HorizontalPodAutoscaler.
  - The **Deployment** creates a single replica of a PHP-Apache web server.
  - The **Service** exposes the web server on a ClusterIP.
  - The **HorizontalPodAutoscaler** is configured to scale the Deployment from 1 to 10 replicas based on CPU utilization. The target CPU utilization is 50%.

## Before You Begin

This example requires a metrics server to be running in your cluster. If you are using minikube, you can enable the metrics server by running the following command:

```bash
minikube addons enable metrics-server
```

## Common Operations

```bash
# Apply the Deployment, Service, and HPA from the manifest file
kubectl apply -f hpa-example.yaml

# Check the status of the HPA
kubectl get hpa

# Generate load on the service
# (in a separate terminal)
kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"

# Watch the HPA scale the deployment
kubectl get hpa -w
```
