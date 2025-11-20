# Service Accounts - Pod Identity

A ServiceAccount provides an identity for processes that run in a Pod. It allows Pods to authenticate with the Kubernetes API server and other services.

## Learning Path

### [01-basic](./01-basic/) - Service Account Fundamentals
- **Creating Service Accounts**: Learn how to create a ServiceAccount for your applications.
- **Pod authentication**: Understand how Pods use ServiceAccounts to authenticate with the Kubernetes API server.
- **Default Service Account**: Learn about the default ServiceAccount that is created in each namespace.
- **Token mounting**: Understand how ServiceAccount tokens are automatically mounted into Pods.

### [02-intermediate](./02-intermediate/) - Advanced Identity Management
- **Custom Service Accounts**: Create custom ServiceAccounts for your applications to provide them with a unique identity.
- **Token lifecycle management**: Manage the lifecycle of ServiceAccount tokens.
- **Cross-namespace access**: Grant a ServiceAccount in one namespace access to resources in another namespace.
- **Service Account tokens**: Learn about the different types of ServiceAccount tokens and how to use them.

### [03-advanced](./03-advanced/) - Enterprise Identity
- **External identity providers**: Integrate Kubernetes with external identity providers like LDAP and Active Directory.
- **Workload identity federation**: Use workload identity federation to grant your Kubernetes workloads access to cloud provider resources without having to manage long-lived credentials.
- **Service mesh integration**: Integrate ServiceAccounts with a service mesh like Istio to provide strong identities for your services.
- **Identity governance**: Implement identity governance policies to control who can create and manage ServiceAccounts.

## Key Concepts

- **Authentication**: A ServiceAccount provides an identity for a Pod, which can be used to authenticate with the Kubernetes API server.
- **Authorization**: Once a Pod has been authenticated, its ServiceAccount is used to determine what actions it is authorized to perform. This is done using Role-Based Access Control (RBAC).
- **Tokens**: A ServiceAccount is associated with a set of tokens, which are used to authenticate with the Kubernetes API server.
- **Mounting**: ServiceAccount tokens are automatically mounted into Pods, which allows the Pods to authenticate with the Kubernetes API server.

## Quick Start

```bash
# Create a ServiceAccount
kubectl create serviceaccount my-sa

# Create a Pod that uses the ServiceAccount
kubectl apply -f 01-basic/custom-service-account.yaml

# Check the ServiceAccount of the Pod
kubectl get pod my-pod -o jsonpath='{.spec.serviceAccountName}'
```