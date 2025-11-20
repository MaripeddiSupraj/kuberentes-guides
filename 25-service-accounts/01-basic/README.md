# Basic Service Account

This example demonstrates how to create a custom ServiceAccount and use it in a Pod.

## What is a Service Account?

A **ServiceAccount** provides an identity for processes that run in a Pod. It allows Pods to authenticate with the Kubernetes API server and other services.

## Example in this Section

- `custom-service-account.yaml`: This file defines a ServiceAccount, a Role, a RoleBinding, and two Pods.
  - The **ServiceAccount** is named `api-reader`.
  - The **Role** is named `api-reader` and grants permission to get, list, and watch Pods and Services, and get and list Deployments.
  - The **RoleBinding** binds the `api-reader` Role to the `api-reader` ServiceAccount.
  - The first **Pod** is named `api-client` and uses the `api-reader` ServiceAccount. The ServiceAccount token will be automatically mounted into this Pod.
  - The second **Pod** is named `no-token-pod` and also uses the `api-reader` ServiceAccount, but has `automountServiceAccountToken` set to `false`, so the ServiceAccount token will not be mounted into this Pod.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f custom-service-account.yaml

# Check the ServiceAccount of the Pods
kubectl get pod api-client -o jsonpath='{.spec.serviceAccountName}'
kubectl get pod no-token-pod -o jsonpath='{.spec.serviceAccountName}'

# Exec into the api-client Pod and check for the token
kubectl exec -it api-client -- ls /var/run/secrets/kubernetes.io/serviceaccount

# Exec into the no-token-pod and check for the token
kubectl exec -it no-token-pod -- ls /var/run/secrets/kubernetes.io/serviceaccount
```
