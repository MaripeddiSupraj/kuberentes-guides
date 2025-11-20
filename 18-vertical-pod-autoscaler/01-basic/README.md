# Basic Vertical Pod Autoscaler

This example demonstrates how to create a basic Vertical Pod Autoscaler (VPA) to automatically adjust the CPU and memory requests of a Deployment.

## What is a Vertical Pod Autoscaler?

The **Vertical Pod Autoscaler (VPA)** is a Kubernetes object that automatically adjusts the CPU and memory reservations for your Pods to help you right-size your applications. It can also be used to get recommendations for resource requests and limits.

## Example in this Section

- `vpa-example.yaml`: This file defines a Deployment and a VerticalPodAutoscaler.
  - The **Deployment** creates two replicas of an NGINX web server.
  - The **VerticalPodAutoscaler** is configured to automatically adjust the CPU and memory requests of the Deployment. The `updateMode` is set to `Auto`, which means that the VPA will automatically update the resource requests of the Pods while they are running.

## Before You Begin

This example requires the Vertical Pod Autoscaler to be installed in your cluster. If you have not already installed the VPA, you can do so by following the instructions in the [official VPA documentation](https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler).

## Common Operations

```bash
# Apply the Deployment and VPA from the manifest file
kubectl apply -f vpa-example.yaml

# Check the status of the VPA
kubectl get vpa

# Describe the VPA to see its recommendations
kubectl describe vpa vpa-demo
```
