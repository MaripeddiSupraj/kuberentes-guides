# Intermediate Pods

Build on your basic knowledge with more complex Pod configurations and patterns.

## Topics Covered

1. **Multi-container Pods** - Running multiple containers in a single Pod
2. **Init Containers** - Setup containers that run before main containers
3. **Resource Management** - CPU and memory requests/limits
4. **Health Checks** - Liveness and readiness probes
5. **Volume Mounts** - Sharing data between containers

## Examples in this Section

- `multi-container-pod.yaml` - Sidecar pattern with shared volume
- `init-container-pod.yaml` - Using init containers for setup
- `resource-limits-pod.yaml` - Setting resource constraints
- `health-checks-pod.yaml` - Implementing health probes
- `shared-volume-pod.yaml` - Volume sharing between containers

## Key Concepts

### Multi-container Patterns
- **Sidecar**: Helper container alongside main application
- **Ambassador**: Proxy container for external connections
- **Adapter**: Transform output from main container

### Resource Management
- **Requests**: Minimum resources guaranteed
- **Limits**: Maximum resources allowed
- **QoS Classes**: Guaranteed, Burstable, BestEffort

### Health Checks
- **Liveness Probe**: Restart container if unhealthy
- **Readiness Probe**: Remove from service if not ready
- **Startup Probe**: Handle slow-starting containers

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