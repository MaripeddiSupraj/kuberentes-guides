# Basic Deployments

Learn to create and manage Kubernetes Deployments for application lifecycle management.

## What is a Deployment?

A Deployment manages ReplicaSets and provides:
- Declarative updates for Pods
- Rolling updates and rollbacks
- Scaling capabilities
- Self-healing applications

## Examples

- `simple-deployment.yaml` - Basic deployment
- `deployment-with-service.yaml` - Deployment + Service
- `scaled-deployment.yaml` - Multi-replica deployment
- `deployment-with-resources.yaml` - Resource constraints

## Common Operations

```bash
# Create deployment
kubectl apply -f simple-deployment.yaml

# Scale deployment
kubectl scale deployment nginx-deployment --replicas=5

# Update image
kubectl set image deployment/nginx-deployment nginx=nginx:1.22

# Check rollout status
kubectl rollout status deployment/nginx-deployment

# View rollout history
kubectl rollout history deployment/nginx-deployment

# Rollback to previous version
kubectl rollout undo deployment/nginx-deployment
```