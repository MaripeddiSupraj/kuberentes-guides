# Basic Services

Learn the fundamentals of Kubernetes Services for networking and service discovery.

## What is a Service?

A Service provides stable networking for Pods:
- Stable IP address and DNS name
- Load balancing across multiple Pods
- Service discovery within the cluster
- Decouples consumers from Pod locations

## Service Types

1. **ClusterIP** (default) - Internal cluster access only
2. **NodePort** - External access via node IP:port
3. **LoadBalancer** - Cloud provider load balancer
4. **ExternalName** - DNS CNAME mapping

## Examples

- `clusterip-service.yaml` - Internal service
- `nodeport-service.yaml` - External access via node
- `loadbalancer-service.yaml` - Cloud load balancer
- `headless-service.yaml` - Direct Pod access

## Exercises

```bash
# Create ClusterIP service
kubectl apply -f clusterip-service.yaml

# Test service discovery
kubectl run test --image=busybox:1.35 --rm -it -- nslookup my-service

# Create NodePort service
kubectl apply -f nodeport-service.yaml

# Access via node IP
curl <node-ip>:<node-port>
```