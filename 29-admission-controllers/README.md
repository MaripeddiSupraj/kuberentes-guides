# Admission Controllers - Request Validation and Mutation

An admission controller is a piece of code that intercepts requests to the Kubernetes API server prior to persistence of the object, but after the request is authenticated and authorized. Admission controllers can be validating, mutating, or both.

## Learning Path

### [01-basic](./01-basic/) - Admission Controller Fundamentals
- **Built-in admission controllers**: Learn about the built-in admission controllers that are compiled into the Kubernetes API server.
- **Validating vs Mutating controllers**: Understand the difference between validating and mutating admission controllers.
- **Admission controller chain**: Learn how admission controllers are chained together and how they are ordered.
- **Common use cases**: Explore common use cases for admission controllers, such as enforcing security policies and validating resource requests.

### [02-intermediate](./02-intermediate/) - Custom Admission Controllers
- **Validating Admission Webhooks**: Create a custom validating admission webhook to validate requests to the Kubernetes API server.
- **Mutating Admission Webhooks**: Create a custom mutating admission webhook to modify requests to the Kubernetes API server.
- **Webhook configuration**: Learn how to configure your admission webhooks to be called by the Kubernetes API server.
- **Certificate management**: Manage the certificates for your admission webhooks.

### [03-advanced](./03-advanced/) - Enterprise Admission Control
- **Policy engines (OPA Gatekeeper)**: Use a policy engine like OPA/Gatekeeper to enforce complex policies using admission controllers.
- **Multi-tenant admission control**: Use admission controllers to enforce policies in a multi-tenant cluster.
- **Compliance enforcement**: Use admission controllers to enforce compliance requirements.
- **Performance optimization**: Optimize the performance of your admission controllers.

## Controller Types

- **Mutating**: Mutating admission controllers can modify the objects they admit.
- **Validating**: Validating admission controllers can validate the objects they admit and reject them if they do not meet certain criteria.
- **Built-in**: Built-in admission controllers are compiled into the Kubernetes API server and are enabled by default.
- **Dynamic**: Dynamic admission controllers are external webhooks that are called by the Kubernetes API server.

## Quick Start

```bash
# Apply a ValidatingAdmissionWebhook
kubectl apply -f 01-basic/validating-webhook.yaml

# Try to create a Pod that violates the policy
# (This will be rejected by the webhook)
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: invalid-pod
spec:
  containers:
  - name: app
    image: nginx:1.21
EOF
```