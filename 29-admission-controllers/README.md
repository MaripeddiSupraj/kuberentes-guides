# Admission Controllers - Request Validation and Mutation

Admission Controllers intercept requests to the Kubernetes API server and can validate, mutate, or reject them.

## Learning Path

### [01-basic](./01-basic/) - Admission Controller Fundamentals
- Built-in admission controllers
- Validating vs Mutating controllers
- Admission controller chain
- Common use cases

### [02-intermediate](./02-intermediate/) - Custom Admission Controllers
- Validating Admission Webhooks
- Mutating Admission Webhooks
- Webhook configuration
- Certificate management

### [03-advanced](./03-advanced/) - Enterprise Admission Control
- Policy engines (OPA Gatekeeper)
- Multi-tenant admission control
- Compliance enforcement
- Performance optimization

## Controller Types

- **Mutating** - Modify requests before validation
- **Validating** - Accept or reject requests
- **Built-in** - Compiled into kube-apiserver
- **Dynamic** - External webhooks