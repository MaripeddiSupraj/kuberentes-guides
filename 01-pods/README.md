# Pods - The Building Blocks of Kubernetes

Pods are the smallest and most fundamental deployable units in Kubernetes. A Pod represents a single instance of a running process in your cluster. This section covers everything from basic pod creation to advanced pod patterns.

## Learning Path

### [01-basic](./01-basic/) - Getting Started with Pods
- **What is a Pod?**: Understand the core concept of a Pod and why it's the fundamental building block.
- **Creating your first Pod**: Learn how to define and create a simple Pod using a YAML manifest.
- **Basic Pod lifecycle**: Explore the different phases of a Pod's lifecycle (Pending, Running, Succeeded, Failed).
- **Viewing Pod logs and status**: Get hands-on with `kubectl` commands to inspect and debug Pods.

### [02-intermediate](./02-intermediate/) - Working with Pods
- **Multi-container Pods**: Learn how to run multiple containers within a single Pod to create cohesive units.
- **Init containers**: Use Init containers to run setup tasks before your main application containers start.
- **Pod networking basics**: Understand how Pods communicate with each other within the same node and across the cluster.
- **Resource requests and limits**: Define CPU and memory resources for your Pods to ensure stable performance.
- **Health checks (liveness/readiness probes)**: Configure liveness and readiness probes to monitor your application's health.

### [03-advanced](./03-advanced/) - Advanced Pod Patterns
- **Sidecar patterns**: Implement the sidecar pattern for tasks like logging, monitoring, and proxying.
- **Pod security contexts**: Secure your Pods by defining granular security settings.
- **Pod disruption budgets**: Ensure application availability during voluntary disruptions.
- **Advanced scheduling**: Control where your Pods run using node affinity, taints, and tolerations.
- **Pod presets and admission controllers**: Automate Pod configurations and enforce policies.

## Quick Start

```bash
# Navigate to basic examples
cd 01-basic

# Apply your first pod
kubectl apply -f simple-pod.yaml

# Check pod status
kubectl get pods
```