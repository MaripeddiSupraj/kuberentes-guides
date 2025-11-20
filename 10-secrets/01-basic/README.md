# Basic Secret

This example demonstrates how to create a basic Secret and consume it in a Pod.

## What is a Secret?

A **Secret** is a Kubernetes object that stores and manages sensitive information, such as passwords, OAuth tokens, and SSH keys. Storing sensitive information in a Secret is more secure than putting it in a Pod definition or in a container image.

## Example in this Section

- `database-secret.yaml`: This file defines a Secret named `database-secret` and a Pod named `database-client` that consumes the Secret data as environment variables. The `POSTGRES_USER`, `POSTGRES_PASSWORD`, and `POSTGRES_HOST` environment variables are set from the `username`, `password`, and `host` keys in the Secret.

## Key Concepts

- **Base64 Encoding**: The data in a Secret is stored in base64-encoded format.
- **Consuming Secrets**: Secrets can be consumed in a Pod as environment variables or as files in a volume.

## Common Operations

```bash
# Create the Secret and the Pod from the manifest file
kubectl apply -f database-secret.yaml

# Check the environment variables in the Pod
kubectl exec -it database-client -- printenv
```
