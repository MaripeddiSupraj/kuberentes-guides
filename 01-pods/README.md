# Pods - The Building Blocks of Kubernetes

Pods are the smallest deployable units in Kubernetes. This section covers everything from basic pod creation to advanced pod patterns.

## Learning Path

### [01-basic](./01-basic/) - Getting Started with Pods
- What is a Pod?
- Creating your first Pod
- Basic Pod lifecycle
- Viewing Pod logs and status

### [02-intermediate](./02-intermediate/) - Working with Pods
- Multi-container Pods
- Init containers
- Pod networking basics
- Resource requests and limits
- Health checks (liveness/readiness probes)

### [03-advanced](./03-advanced/) - Advanced Pod Patterns
- Sidecar patterns
- Pod security contexts
- Pod disruption budgets
- Advanced scheduling (node affinity, taints/tolerations)
- Pod presets and admission controllers

## Quick Start

```bash
# Navigate to basic examples
cd 01-basic

# Apply your first pod
kubectl apply -f simple-pod.yaml

# Check pod status
kubectl get pods
```