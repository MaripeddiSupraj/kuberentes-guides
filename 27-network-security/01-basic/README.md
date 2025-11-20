# Basic Network Security

This example demonstrates how to implement a zero-trust network for a microservices application using Network Policies, Ingress, and other security features.

## What is a Zero-Trust Network?

A **zero-trust network** is a security model where no traffic is trusted by default. All traffic, both internal and external, must be authenticated and authorized before it is allowed to flow.

## Example in this Section

- `zero-trust-network.yaml`: This file defines a set of resources for a secure application.
  - **Network Policies**: A set of Network Policies that implement a zero-trust network.
  - **Secret**: A Secret to store the TLS certificate and private key for the Ingress.
  - **Ingress**: An Ingress that terminates TLS traffic and routes it to the frontend service.
  - **Deployment**: A Deployment for the frontend service with a security context that hardens the Pods.

## Before You Begin

This example requires a network plugin that supports Network Policies, such as Calico, Cilium, or Weave Net. It also requires an Ingress controller to be running in your cluster.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f zero-trust-network.yaml

# Check the status of the Network Policies
kubectl get networkpolicies -n secure-app
```
