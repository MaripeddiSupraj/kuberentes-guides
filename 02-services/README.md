# Services - Networking and Service Discovery

Services provide stable networking for Pods and enable service discovery within your cluster.

## Learning Path

### [01-basic](./01-basic/) - Service Fundamentals
- What are Services?
- ClusterIP services (default)
- NodePort services
- Service discovery basics

### [02-intermediate](./02-intermediate/) - Service Types & Patterns
- LoadBalancer services
- ExternalName services
- Headless services
- Service endpoints and selectors

### [03-advanced](./03-advanced/) - Advanced Networking
- Service mesh integration
- Custom service topologies
- Network policies with services
- Multi-cluster services

## Service Types Overview

| Type | Use Case | Access |
|------|----------|--------|
| ClusterIP | Internal communication | Cluster-only |
| NodePort | External access via node | Node IP:Port |
| LoadBalancer | Cloud load balancer | External IP |
| ExternalName | External service mapping | DNS CNAME |

## Quick Start

```bash
# Create a simple service
kubectl apply -f 01-basic/clusterip-service.yaml

# Test service discovery
kubectl run test-pod --image=busybox:1.35 --rm -it -- nslookup my-service
```