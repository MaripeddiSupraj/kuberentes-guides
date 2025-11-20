# Basic Ingress

This example demonstrates how to create a basic Ingress to expose a service to the outside world.

## What is an Ingress?

An **Ingress** is a Kubernetes object that exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource.

## Example in this Section

- `simple-ingress.yaml`: This file defines an Ingress, a Service, and a Deployment.
  - The **Deployment** creates two replicas of an NGINX web server.
  - The **Service** exposes the NGINX web server on a ClusterIP.
  - The **Ingress** routes traffic from `myapp.local` to the `web-service`.

## Before You Begin

This example requires an Ingress controller to be running in your cluster. If you are using minikube, you can enable the NGINX Ingress controller by running the following command:

```bash
minikube addons enable ingress
```

## Common Operations

```bash
# Apply the Ingress, Service, and Deployment from the manifest file
kubectl apply -f simple-ingress.yaml

# Add an entry to your /etc/hosts file to map myapp.local to your Ingress controller's IP address
echo "$(minikube ip) myapp.local" | sudo tee -a /etc/hosts

# Access the service through the Ingress
curl myapp.local
```
