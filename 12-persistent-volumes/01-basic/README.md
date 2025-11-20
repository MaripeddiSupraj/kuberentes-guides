# Basic PersistentVolume and PersistentVolumeClaim

This example demonstrates how to create a basic PersistentVolume (PV) and a PersistentVolumeClaim (PVC) and use them in a Pod.

## What are PersistentVolumes and PersistentVolumeClaims?

A **PersistentVolume (PV)** is a piece of storage in the cluster that has been provisioned by an administrator. It is a resource in the cluster just like a node is a cluster resource.

A **PersistentVolumeClaim (PVC)** is a request for storage by a user. It is similar to a Pod. Pods consume node resources and PVCs consume PV resources.

## Example in this Section

- `pv-pvc-example.yaml`: This file defines a PersistentVolume, a PersistentVolumeClaim, and a Pod that uses them.
  - The **PersistentVolume** is a `hostPath` volume, which is a simple way to provision storage for a single-node cluster.
  - The **PersistentVolumeClaim** requests 1Gi of storage with the `ReadWriteOnce` access mode.
  - The **Pod** mounts the PersistentVolumeClaim as a volume and uses it to store the NGINX web server's data.

## Common Operations

```bash
# Create the PV, PVC, and Pod from the manifest file
kubectl apply -f pv-pvc-example.yaml

# Check the status of the PV and PVC
kubectl get pv,pvc

# Check the status of the Pod
kubectl get pods
```
