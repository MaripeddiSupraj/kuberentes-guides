# Network Policies - Network Security and Isolation

Network Policies provide a way to control the traffic flow between Pods in a Kubernetes cluster. They are a powerful tool for implementing network-level security and microsegmentation.

**Note:** To use Network Policies, you need a network plugin that supports them, such as Calico, Cilium, or Weave Net.

## Learning Path

### [01-basic](./01-basic/) - Network Policy Fundamentals
- **Creating Network Policies**: Learn how to create a NetworkPolicy to control the traffic flow between Pods.
- **Ingress and egress rules**: Use ingress and egress rules to control inbound and outbound traffic.
- **Pod and namespace selectors**: Use pod and namespace selectors to specify which Pods a NetworkPolicy applies to.
- **Default deny policies**: Create a default deny policy to block all traffic by default.

### [02-intermediate](./02-intermediate/) - Advanced Network Security
- **Complex selector combinations**: Use complex selector combinations to create more granular network policies.
- **Port-based policies**: Control traffic based on the port number.
- **External traffic control**: Control traffic to and from external endpoints.
- **Policy troubleshooting**: Troubleshoot network policies when they are not working as expected.

### [03-advanced](./03-advanced/) - Enterprise Network Security
- **Zero-trust networking**: Implement a zero-trust networking model where no traffic is trusted by default.
- **Multi-tenant isolation**: Isolate tenants in a multi-tenant cluster using network policies.
- **Compliance policies**: Use network policies to enforce compliance requirements.
- **Network policy automation**: Automate the creation and management of network policies.

## Policy Types

- **Ingress**: Controls incoming traffic to Pods.
- **Egress**: Controls outgoing traffic from Pods.
- **Default Deny**: A policy that blocks all traffic by default.
- **Allow Specific**: A policy that only allows specific traffic.

## Quick Start

```bash
# Apply a simple NetworkPolicy
kubectl apply -f 01-basic/deny-all-policy.yaml

# Check the status of the NetworkPolicy
kubectl get networkpolicies
```