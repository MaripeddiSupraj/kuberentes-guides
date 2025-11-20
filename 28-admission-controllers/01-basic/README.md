# Basic Validating Admission Webhook

This example demonstrates how to create a basic validating admission webhook to validate requests to the Kubernetes API server.

## What is a Validating Admission Webhook?

A **validating admission webhook** is a type of admission controller that can be used to validate requests to the Kubernetes API server. It can be used to enforce custom policies and to ensure that resources are created and updated in a consistent manner.

## Example in this Section

- `validating-webhook.yaml`: This file defines a ConfigMap, a Deployment, a Service, and a ValidatingAdmissionWebhook.
  - The **ConfigMap** contains a Python script for a simple validating webhook server that requires Pods to have an `app` label.
  - The **Deployment** runs the webhook server.
  - The **Service** exposes the webhook server.
  - The **ValidatingAdmissionWebhook** registers the webhook with the Kubernetes API server.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f validating-webhook.yaml

# Try to create a Pod without the 'app' label (this will be rejected)
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

# Try to create a Pod with the 'app' label (this will be allowed)
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: valid-pod
  labels:
    app: my-app
spec:
  containers:
  - name: app
    image: nginx:1.21
EOF
```
