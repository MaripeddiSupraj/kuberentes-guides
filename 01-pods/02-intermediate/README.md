# Intermediate Pods

Build on your basic knowledge with more complex Pod configurations and patterns.

## Topics Covered

1. **Multi-container Pods**: Learn how to run multiple containers in a single Pod to create cohesive units.
2. **Init Containers**: Use Init containers to run setup tasks before your main application containers start.
3. **Resource Management**: Define CPU and memory resources for your Pods to ensure stable performance.
4. **Health Checks**: Configure liveness and readiness probes to monitor your application's health.
5. **Volume Mounts**: Learn how to share data between containers in the same Pod using volumes.

## Examples in this Section

- `multi-container-pod.yaml`: Demonstrates the sidecar pattern where a helper container runs alongside the main application, sharing a volume for communication.
- `init-container-pod.yaml`: Shows how to use an init container to perform a setup task before the main container is started.
- `resource-limits-pod.yaml`: An example of setting CPU and memory requests and limits for a Pod.
- `health-checks-pod.yaml`: Implements liveness and readiness probes to ensure the application is healthy and ready to receive traffic.
- `shared-volume-pod.yaml`: A simple example of two containers sharing an `emptyDir` volume to exchange data.

## Key Concepts

### Multi-container Patterns
- **Sidecar**: A helper container that runs alongside the main application to provide supporting functions like logging or monitoring.
- **Ambassador**: A proxy container that simplifies network communication between the main application and the outside world.
- **Adapter**: A container that transforms the output of the main application into a different format.

### Resource Management
- **Requests**: The minimum amount of CPU and memory that a container is guaranteed to receive.
- **Limits**: The maximum amount of CPU and memory that a container is allowed to use.
- **QoS Classes**: Kubernetes assigns a Quality of Service (QoS) class to Pods based on their resource requests and limits: `Guaranteed`, `Burstable`, or `BestEffort`.

### Health Checks
- **Liveness Probe**: Restarts the container if it becomes unresponsive.
- **Readiness Probe**: Removes the Pod from service endpoints if it's not ready to serve traffic.
- **Startup Probe**: Used for slow-starting containers to prevent them from being killed by liveness probes.

## Exercises

Try each example and observe the behavior:

```bash
# Multi-container pod
kubectl apply -f multi-container-pod.yaml
kubectl logs multi-container-pod -c main-app
kubectl logs multi-container-pod -c sidecar

# Init containers
kubectl apply -f init-container-pod.yaml
kubectl describe pod init-demo

# Resource monitoring
kubectl apply -f resource-limits-pod.yaml
kubectl top pod resource-demo
```