# Basic Network Policies

This example demonstrates how to create basic Network Policies to control the traffic flow between Pods.

## What is a Network Policy?

A **Network Policy** is a Kubernetes object that defines how Pods are allowed to communicate with each other and with other network endpoints. Network Policies are a powerful tool for implementing network-level security and microsegmentation.

## Example in this Section

- `deny-all-policy.yaml`: This file defines two Network Policies and two Deployments.
  - The first **Network Policy** is a `deny-all` policy that blocks all ingress and egress traffic in the `default` namespace.
  - The second **Network Policy** allows ingress traffic from Pods with the label `app: web` to Pods with the label `app: database` on port 5432.
  - The two **Deployments** are for a web app and a database.

## Before You Begin

This example requires a network plugin that supports Network Policies, such as Calico, Cilium, or Weave Net.

## Common Operations

```bash
# Apply the Network Policies and Deployments from the manifest file
kubectl apply -f deny-all-policy.yaml

# Check the status of the Network Policies
kubectl get networkpolicies
```
