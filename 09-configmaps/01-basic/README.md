# Basic ConfigMap

This example demonstrates how to create a basic ConfigMap and consume it in a Pod.

## What is a ConfigMap?

A **ConfigMap** is a Kubernetes object that stores non-confidential configuration data in key-value pairs. It allows you to decouple your configuration from your application code, making your applications more portable and easier to manage.

## Example in this Section

- `app-config.yaml`: This file defines a ConfigMap named `app-config` and a Pod named `app-pod` that consumes the ConfigMap data in two ways:
  - As environment variables: The `DATABASE_URL` and `DEBUG_MODE` environment variables are set from the `database_url` and `debug_mode` keys in the ConfigMap.
  - As a volume mount: The entire ConfigMap is mounted as a volume at `/etc/config`.

## Common Operations

```bash
# Create the ConfigMap and the Pod from the manifest file
kubectl apply -f app-config.yaml

# Check the environment variables in the Pod
kubectl exec -it app-pod -- printenv

# Check the files in the mounted volume
kubectl exec -it app-pod -- ls /etc/config
```
