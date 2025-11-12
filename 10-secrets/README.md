# Secrets - Sensitive Information

Secrets store and manage sensitive information like passwords, tokens, and keys.

## Learning Path

### [01-basic](./01-basic/) - Secret Fundamentals
- Creating Secrets
- Secret types (Opaque, TLS, Docker registry)
- Using Secrets in Pods
- Base64 encoding/decoding

### [02-intermediate](./02-intermediate/) - Advanced Secret Management
- Secret rotation strategies
- External secret management integration
- Secret encryption at rest
- RBAC for Secrets

### [03-advanced](./03-advanced/) - Enterprise Secret Management
- External secret operators
- Secret scanning and compliance
- Multi-cluster secret synchronization
- Secret lifecycle management

## Secret Types

- **Opaque** - Arbitrary user data (default)
- **kubernetes.io/tls** - TLS certificates
- **kubernetes.io/dockerconfigjson** - Docker registry auth
- **kubernetes.io/service-account-token** - Service account tokens