# Services - Networking and Service Discovery

Services provide a stable networking endpoint for a set of Pods, enabling reliable service discovery within your Kubernetes cluster.

## Learning Path

### [01-basic](./01-basic/) - Service Fundamentals
- **What are Services?**: Understand how Services provide a stable IP address and DNS name for your application Pods.
- **ClusterIP services (default)**: Learn about the default Service type, which exposes the Service on a cluster-internal IP.
- **NodePort services**: Expose your application on a static port on each of the cluster's Nodes.
- **Service discovery basics**: Discover how Pods can find and communicate with Services using DNS.

### [02-intermediate](./02-intermediate/) - Service Types & Patterns
- **LoadBalancer services**: Expose your application to the internet using a cloud provider's load balancer.
- **ExternalName services**: Create a Service that acts as an alias for an external service by returning a CNAME record.
- **Headless services**: Learn how to use Services without a ClusterIP for direct Pod communication.
- **Service endpoints and selectors**: Understand the relationship between Services, Endpoints, and Pod labels.

### [03-advanced](./03-advanced/) - Advanced Networking
- **Service mesh integration**: Explore how Services integrate with a service mesh like Istio or Linkerd for advanced traffic management.
- **Custom service topologies**: Learn about advanced networking patterns and custom Service implementations.
- **Network policies with services**: Secure your Services by applying network policies to control inbound and outbound traffic.
- **Multi-cluster services**: Discover how to manage Services that span across multiple Kubernetes clusters.

## Service Types Overview

| Type         | Use Case                               | Access                |
|--------------|----------------------------------------|-----------------------|
| ClusterIP    | Internal application communication     | Cluster-only          |
| NodePort     | External access for development/demo   | Node IP:Port          |
| LoadBalancer | Production-grade external access       | External IP           |
| ExternalName | Mapping to an external service         | DNS CNAME             |

## Quick Start

```bash
# Create a simple service
kubectl apply -f 01-basic/clusterip-service.yaml

# Test service discovery from a temporary pod
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: test-pod
spec:
  containers:
  - name: busybox
    image: busybox:1.35
    command: ['sh', '-c', 'nslookup my-service && sleep 3600']
  restartPolicy: Never
EOF

# Check the logs of the test pod
kubectl logs test-pod
```