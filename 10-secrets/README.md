# Secrets - Sensitive Information

A Secret is a Kubernetes object that stores and manages sensitive information, such as passwords, OAuth tokens, and SSH keys. Storing sensitive information in a Secret is more secure than putting it in a Pod definition or in a container image.

**Note:** By default, Kubernetes Secrets are stored as unencrypted base64-encoded strings in etcd. It is highly recommended to enable encryption at rest for Secrets to protect them from being accessed by unauthorized parties.

## Learning Path

### [01-basic](./01-basic/) - Secret Fundamentals
- **Creating Secrets**: Learn how to create a Secret from literal values, files, and directories.
- **Secret types**: Understand the different types of Secrets, such as Opaque, `kubernetes.io/tls`, and `kubernetes.io/dockerconfigjson`.
- **Using Secrets in Pods**: Discover how to consume Secret data in your Pods as environment variables or as files in a volume.
- **Base64 encoding/decoding**: Learn how to encode and decode Secret data using base64.

### [02-intermediate](./02-intermediate/) - Advanced Secret Management
- **Secret rotation strategies**: Implement strategies for rotating Secrets to reduce the risk of them being compromised.
- **External secret management integration**: Integrate Kubernetes with external secret management systems like HashiCorp Vault or AWS Secrets Manager.
- **Secret encryption at rest**: Learn how to enable encryption at rest for Secrets to protect them from being accessed by unauthorized parties.
- **RBAC for Secrets**: Use Role-Based Access Control (RBAC) to control who can access Secrets.

### [03-advanced](./03-advanced/) - Enterprise Secret Management
- **External secret operators**: Use operators to automatically sync Secrets from external secret management systems.
- **Secret scanning and compliance**: Scan your cluster for sensitive information that is not stored in a Secret and ensure compliance with security policies.
- **Multi-cluster secret synchronization**: Synchronize Secrets across multiple Kubernetes clusters.
- **Secret lifecycle management**: Manage the entire lifecycle of a Secret, from creation to deletion.

## Secret Types

- **Opaque**: The default Secret type, used for storing arbitrary user data.
- **kubernetes.io/tls**: Used for storing a TLS certificate and private key.
- **kubernetes.io/dockerconfigjson**: Used for storing credentials for a Docker registry.
- **kubernetes.io/service-account-token**: Used for storing a token for a ServiceAccount.

## Quick Start

```bash
# Create a Secret from a literal value
kubectl create secret generic my-secret --from-literal=password='my-secret-password'

# Create a simple Pod that consumes the Secret
kubectl apply -f 01-basic/database-secret.yaml

# Check the environment variables in the Pod
kubectl exec -it my-pod -- printenv
```