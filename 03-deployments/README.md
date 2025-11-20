# Deployments - Application Management

Deployments provide declarative updates for Pods and ReplicaSets, enabling powerful features like rolling updates, rollbacks, and scaling for your applications.

## Learning Path

### [01-basic](./01-basic/) - Deployment Fundamentals
- **Creating deployments**: Learn how to create a Deployment to manage a set of replicated Pods.
- **Scaling applications**: Easily scale the number of Pods in a Deployment up or down.
- **Basic rolling updates**: Perform zero-downtime rolling updates to your application by updating the Deployment's Pod template.
- **Deployment status and history**: Monitor the status of a rolling update and view the history of a Deployment's revisions.

### [02-intermediate](./02-intermediate/) - Advanced Deployment Strategies
- **Rolling update strategies**: Customize the rolling update process with parameters like `maxSurge` and `maxUnavailable`.
- **Rollback operations**: Learn how to roll back a Deployment to a previous revision if something goes wrong.
- **Deployment annotations and labels**: Use labels and annotations to organize and manage your Deployments.
- **Resource management in deployments**: Set resource requests and limits for the Pods managed by a Deployment.

### [03-advanced](./03-advanced/) - Enterprise Deployment Patterns
- **Blue-green deployments**: Implement a blue-green deployment strategy to release new versions of your application with zero downtime.
- **Canary deployments**: Perform a canary release by directing a small percentage of traffic to a new version of your application.
- **Advanced update strategies**: Explore more advanced deployment strategies and patterns.
- **Deployment hooks and lifecycle**: Use lifecycle hooks to run custom actions at different stages of a Pod's lifecycle.

## Key Benefits

- **Declarative Updates**: Describe your desired state, and the Deployment controller will change the actual state to the desired state at a controlled rate.
- **Rolling Updates**: Deployments enable zero-downtime rolling updates by incrementally updating Pods instances with new ones.
- **Rollback Capability**: Easily roll back to a previous version of your application if the new version has issues.
- **Scaling**: Horizontally scale your application by increasing or decreasing the number of replicas.
- **Self-healing**: If a Pod managed by a Deployment fails, the Deployment controller will automatically replace it.

## Quick Start

```bash
# Create a simple deployment
kubectl apply -f 01-basic/simple-deployment.yaml

# Check the status of the deployment
kubectl get deployments

# Scale the deployment to 3 replicas
kubectl scale deployment my-deployment --replicas=3

# See the deployment history
kubectl rollout history deployment my-deployment
```