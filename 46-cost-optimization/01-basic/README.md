# Basic Cost Optimization

This example demonstrates some basic cost optimization techniques for a Kubernetes cluster.

## What is Cost Optimization?

**Cost optimization** is the process of reducing the cost of running your Kubernetes cluster and applications without sacrificing performance or reliability.

## Example in this Section

- `resource-optimization.yaml`: This file defines a Namespace, a ResourceQuota, and a Deployment.
  - The **Namespace** has labels for `cost-center` and `environment`, which can be used for cost allocation and chargeback.
  - The **ResourceQuota** sets limits on the resources that can be consumed in the namespace, which can help to prevent overprovisioning.
  - The **Deployment** uses a `nodeSelector` to run on spot instances, which are much cheaper than on-demand instances. It also has resource requests and limits set, which helps to improve resource utilization.

## Key Concepts

- **Resource Requests and Limits**: Setting appropriate resource requests and limits for your Pods is one of the most important things you can do to improve resource utilization and reduce costs.
- **Node Selector**: A `nodeSelector` is a field in a Pod's specification that allows you to specify which nodes a Pod can be scheduled on.
- **Spot Instances**: Spot instances are unused EC2 instances that are available for a lower price than on-demand instances. They are a great way to save money on your Kubernetes cluster, but they can be terminated at any time.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f resource-optimization.yaml

# Check the status of the ResourceQuota
kubectl get resourcequotas -n cost-optimized

# Check the status of the Deployment
kubectl get deployments -n cost-optimized
```
