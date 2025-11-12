# Basic Services

Learn the fundamentals of Kubernetes Services for networking and service discovery.

## Examples

- `clusterip-service.yaml` - Internal cluster service
- `nodeport-service.yaml` - External access via node ports
- `headless-service.yaml` - Direct pod access for StatefulSets

## Service Types

- **ClusterIP** - Internal cluster access (default)
- **NodePort** - External access via node IP:port
- **LoadBalancer** - Cloud provider load balancer
- **ExternalName** - DNS CNAME mapping

## Commands

```bash
# Create service
kubectl apply -f clusterip-service.yaml

# Test connectivity
kubectl run test --image=busybox:1.35 --rm -it -- wget -qO- service-name

# Check endpoints
kubectl get endpoints
```