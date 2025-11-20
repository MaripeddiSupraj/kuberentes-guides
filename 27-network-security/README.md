# Network Security - Network-level Security

This section covers advanced network security configurations and policies for securing your Kubernetes cluster communications.

## Learning Path

### [01-basic](./01-basic/) - Network Security Fundamentals
- **Network policies basics**: Learn how to use NetworkPolicies to control the traffic flow between Pods.
- **Service mesh security**: Use a service mesh like Istio to secure your services with mutual TLS (mTLS) and other security policies.
- **TLS/mTLS configuration**: Configure TLS and mTLS for your applications to encrypt traffic in transit.
- **Ingress security**: Secure your Ingress with TLS and other security features.

### [02-intermediate](./02-intermediate/) - Advanced Network Security
- **Zero-trust networking**: Implement a zero-trust networking model where no traffic is trusted by default.
- **Network segmentation**: Segment your network to isolate sensitive workloads and reduce the attack surface.
- **Traffic encryption**: Encrypt all traffic between your services to protect it from eavesdropping.
- **Security monitoring**: Monitor your network for security threats and vulnerabilities.

### [03-advanced](./03-advanced/) - Enterprise Network Security
- **Multi-cluster security**: Secure the communication between multiple Kubernetes clusters.
- **Compliance frameworks**: Use network security to help you comply with security frameworks like CIS and NIST.
- **Threat detection**: Detect and respond to security threats in your network.
- **Security automation**: Automate the configuration and management of your network security policies.

## Security Layers

- **Network Policies**: Control the traffic flow between Pods at the network level.
- **Service Mesh**: Provides advanced security features like mTLS, traffic policies, and observability.
- **Ingress**: Secure your Ingress with TLS termination, Web Application Firewalls (WAFs), and other security features.
- **CNI**: Your CNI (Container Network Interface) plugin may provide additional security features, such as network encryption and firewalling.

## Quick Start

```bash
# Apply a NetworkPolicy to deny all traffic to a Pod
kubectl apply -f 01-basic/zero-trust-network.yaml

# Check the status of the NetworkPolicy
kubectl get networkpolicies
```