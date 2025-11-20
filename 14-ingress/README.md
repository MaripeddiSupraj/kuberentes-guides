# Ingress - External Access

An Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource.

## Learning Path

### [01-basic](./01-basic/) - Ingress Fundamentals
- **Creating an Ingress**: Learn how to create an Ingress to expose a service to the outside world.
- **Host-based routing**: Route traffic to different services based on the hostname.
- **Path-based routing**: Route traffic to different services based on the request path.

### [02-intermediate](./02-intermediate/) - Advanced Ingress Patterns
- **TLS termination**: Terminate TLS traffic at the Ingress.
- **Rewrite rules**: Rewrite the request path before forwarding it to the backend service.
- **Annotations**: Use annotations to configure the behavior of the Ingress controller.

### [03-advanced](./03-advanced/) - Enterprise Ingress Management
- **Ingress controllers**: Learn about different Ingress controllers, such as NGINX, Traefik, and HAProxy.
- **Canary releases**: Perform canary releases by directing a small percentage of traffic to a new version of your application.
- **Blue-green deployments**: Implement a blue-green deployment strategy to release new versions of your application with zero downtime.
- **Rate limiting and authentication**: Use an Ingress to implement rate limiting and authentication for your services.

## Ingress Controllers

An Ingress controller is a piece of software that runs in your cluster and is responsible for fulfilling the Ingress resource. Different Ingress controllers have different features and capabilities. Some popular Ingress controllers include:

- **NGINX Ingress Controller**: A popular Ingress controller that is maintained by the Kubernetes community.
- **Traefik**: A modern HTTP reverse proxy and load balancer that is easy to use and has a lot of features.
- **HAProxy Ingress**: An Ingress controller that uses the HAProxy load balancer.

## Quick Start

```bash
# Apply the Ingress, Service, and Deployment
kubectl apply -f 01-basic/simple-ingress.yaml

# Add an entry to your /etc/hosts file to map myapp.local to your Ingress controller's IP address
echo "$(minikube ip) myapp.local" | sudo tee -a /etc/hosts

# Access the service through the Ingress
curl myapp.local
```
