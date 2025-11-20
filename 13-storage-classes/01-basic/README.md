# Basic StorageClass

This example demonstrates how to create a basic StorageClass and use it to dynamically provision a PersistentVolume for a Pod.

## What is a StorageClass?

A **StorageClass** provides a way for administrators to describe the "classes" of storage they offer. Different classes might map to quality-of-service levels, or to backup policies, or to arbitrary policies determined by the cluster administrators.

## Example in this Section

- `storage-class-example.yaml`: This file defines a StorageClass, a PersistentVolumeClaim, and a Deployment that uses them.
  - The **StorageClass** is named `fast-ssd` and uses the `kubernetes.io/aws-ebs` provisioner, which means that this example will only work on AWS.
  - The **PersistentVolumeClaim** requests 10Gi of storage from the `fast-ssd` StorageClass.
  - The **Deployment** creates a PostgreSQL database and uses the PersistentVolumeClaim to provide persistent storage for it.

## Common Operations

```bash
# Create the StorageClass, PVC, and Deployment from the manifest file
kubectl apply -f storage-class-example.yaml

# Check the status of the StorageClass, PVC, and Deployment
kubectl get storageclass,pvc,deployment
```
