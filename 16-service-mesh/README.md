# Service Mesh - Advanced Service Communication

A service mesh is a dedicated infrastructure layer for making service-to-service communication safe, fast, and reliable. It provides features like traffic management, security, and observability for your microservices.

**Note:** Service meshes are powerful but also complex. It is recommended to have a good understanding of Kubernetes before diving into service meshes.

## Learning Path

### [01-basic](./01-basic/) - Service Mesh Fundamentals
- **What is a service mesh**: Understand the concept of a service mesh and the problems it solves.
- **Istio installation**: Install Istio, a popular open-source service mesh, in your Kubernetes cluster.
- **Sidecar proxy pattern**: Learn about the sidecar proxy pattern, which is the core of how a service mesh works.
- **Basic traffic routing**: Use a service mesh to perform basic traffic routing, such as canary releases and A/B testing.

### [02-intermediate](./02-intermediate/) - Advanced Service Mesh
- **Traffic management and routing**: Explore advanced traffic management features, such as request routing, fault injection, and traffic shifting.
- **Security policies (mTLS)**: Secure your services with mutual TLS (mTLS) and other security policies.
- **Observability and tracing**: Gain insights into your services with distributed tracing, metrics, and access logs.
- **Circuit breaking and retries**: Improve the resilience of your services with circuit breaking and automatic retries.

### [03-advanced](./03-advanced/) - Enterprise Service Mesh
- **Multi-cluster service mesh**: Extend your service mesh across multiple Kubernetes clusters.
- **Advanced security policies**: Implement advanced security policies, such as JWT validation and authorization.
- **Performance optimization**: Optimize the performance of your service mesh.
- **Service mesh federation**: Federate multiple service meshes to enable communication between them.

## Key Components

- **Data Plane**: The data plane is composed of a set of intelligent proxies (such as Envoy) that are deployed as sidecars to your application containers. These proxies intercept and control all network communication between your services.
- **Control Plane**: The control plane is responsible for managing and configuring the data plane proxies. It provides an API for you to define traffic management rules, security policies, and other service mesh features.
- **Ingress Gateway**: The ingress gateway is an entry point for external traffic into the service mesh.
- **Service Registry**: The service registry is used for service discovery within the service mesh.

## Quick Start

```bash
# Install Istio
istioctl install --set profile=demo -y

# Deploy a sample application
kubectl apply -f 01-basic/istio-basic.yaml

# Expose the application through the Istio Ingress Gateway
kubectl apply -f - <<EOF
apiVersion: networking.istio.io/v1alpha3
kind: Gateway
metadata:
  name: my-gateway
spec:
  selector:
    istio: ingressgateway
  servers:
  - port:
      number: 80
      name: http
      protocol: HTTP
    hosts:
    - "*"
---
apiVersion: networking.istio.io/v1alpha3
kind: VirtualService
metadata:
  name: my-virtual-service
spec:
  hosts:
  - "*"
  gateways:
  - my-gateway
  http:
  - route:
    - destination:
        host: my-service
        port:
          number: 80
EOF
```