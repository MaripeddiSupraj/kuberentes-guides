# Horizontal Pod Autoscaler - Auto-scaling

The Horizontal Pod Autoscaler (HPA) automatically scales the number of Pods in a replication controller, deployment, replica set or stateful set based on observed CPU utilization (or, with custom metrics support, on some other application-provided metrics).

## Learning Path

### [01-basic](./01-basic/) - HPA Fundamentals
- **Creating an HPA**: Learn how to create an HPA to automatically scale a Deployment.
- **CPU utilization**: Scale a Deployment based on CPU utilization.
- **Memory utilization**: Scale a Deployment based on memory utilization.

### [02-intermediate](./02-intermediate/) - Advanced HPA Patterns
- **Custom metrics**: Scale a Deployment based on custom metrics, such as the number of requests per second.
- **Multiple metrics**: Scale a Deployment based on multiple metrics.
- **Scaling policies**: Configure the scaling policies for an HPA to control how quickly the number of Pods is scaled up or down.

### [03-advanced](./03-advanced/) - Enterprise HPA Management
- **Custom metrics servers**: Use a custom metrics server to provide custom metrics to the HPA.
- **Predictive autoscaling**: Use predictive autoscaling to scale your applications in advance of expected load.
- **Cluster-proportional autoscaling**: Scale your applications based on the size of the cluster.

## Quick Start

```bash
# Apply the Deployment, Service, and HPA
kubectl apply -f 01-basic/hpa-example.yaml

# Check the status of the HPA
kubectl get hpa

# Generate load on the service
# (in a separate terminal)
kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"

# Watch the HPA scale the deployment
kubectl get hpa -w
```
