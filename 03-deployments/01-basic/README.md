# Basic Deployments

Learn to create and manage Kubernetes Deployments for application lifecycle management.

## What is a Deployment?

A Deployment is a Kubernetes object that manages a set of identical Pods. It provides a declarative way to manage the lifecycle of your application, including:
- **Declarative updates**: You define the desired state, and the Deployment controller changes the actual state to the desired state at a controlled rate.
- **Rolling updates and rollbacks**: Deployments enable zero-downtime rolling updates and allow you to easily roll back to a previous version if needed.
- **Scaling**: You can easily scale the number of Pods in a Deployment up or down to meet demand.
- **Self-healing**: If a Pod managed by a Deployment fails, the controller will automatically replace it.

## Examples in this Section

- `simple-deployment.yaml`: A minimal Deployment manifest that creates a ReplicaSet to manage a single NGINX Pod.
- `deployment-with-service.yaml`: Shows how to expose a Deployment to the network by creating a Service that targets the Pods managed by the Deployment.
- `scaled-deployment.yaml`: An example of a Deployment with multiple replicas, demonstrating how Deployments can be used for scaling.
- `deployment-with-resources.yaml`: Demonstrates how to set resource requests and limits for the containers in a Deployment's Pod template.

## Common Operations

```bash
# Create a deployment from a manifest file
kubectl apply -f simple-deployment.yaml

# Scale the number of replicas in a deployment
kubectl scale deployment nginx-deployment --replicas=5

# Update the image of a container in a deployment
kubectl set image deployment/nginx-deployment nginx=nginx:1.22

# Check the status of a rolling update
kubectl rollout status deployment/nginx-deployment

# View the history of a deployment's revisions
kubectl rollout history deployment/nginx-deployment

# Rollback to the previous version of a deployment
kubectl rollout undo deployment/nginx-deployment
```