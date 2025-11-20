# Basic StatefulSet

This example demonstrates how to create a basic StatefulSet for a PostgreSQL database.

## What is a StatefulSet?

A **StatefulSet** is a Kubernetes object used to manage stateful applications. It provides guarantees about the ordering and uniqueness of a set of Pods.

This example includes:
- A **Headless Service**: `postgres-service` is a headless service that provides a stable network identity for each Pod in the StatefulSet.
- A **StatefulSet**: `postgres` is a StatefulSet that manages 3 replicas of a PostgreSQL database.
- **Persistent Storage**: The StatefulSet uses a `volumeClaimTemplates` to create a `PersistentVolumeClaim` for each Pod, providing stable storage.

## Key Concepts

- **Stable Network Identity**: Each Pod in the StatefulSet has a stable hostname, such as `postgres-0`, `postgres-1`, etc.
- **Ordered Operations**: The Pods in a StatefulSet are created, updated, and deleted in a predictable order.
- **Persistent Storage**: Each Pod has its own persistent storage, which is not deleted when the Pod is rescheduled.

## Before You Begin

This example requires a `StorageClass` to be available in your cluster for dynamic volume provisioning.

## Common Operations

```bash
# Create the StatefulSet and the headless service
kubectl apply -f postgres-statefulset.yaml

# Check the status of the StatefulSet
kubectl get statefulsets

# Check the Pods created by the StatefulSet
kubectl get pods -l app=postgres

# Check the PersistentVolumeClaims created by the StatefulSet
kubectl get pvc -l app=postgres
```
