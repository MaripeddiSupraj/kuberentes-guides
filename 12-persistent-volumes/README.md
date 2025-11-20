# Persistent Volumes - Advanced Storage Management

Persistent Volumes (PVs) and Persistent Volume Claims (PVCs) provide an abstraction for managing storage in a Kubernetes cluster. They decouple the provisioning of storage from its consumption, allowing for more flexible and efficient storage management.

## Learning Path

### [01-basic](./01-basic/) - PV/PVC Fundamentals
- **Creating Persistent Volumes**: Learn how to create a PersistentVolume to represent a piece of storage in the cluster.
- **Persistent Volume Claims**: Create a PersistentVolumeClaim to request storage from a PersistentVolume.
- **Storage classes**: Use StorageClasses to define different "classes" of storage, such as "fast" or "slow".
- **Volume binding modes**: Understand the different volume binding modes, such as `Immediate` and `WaitForFirstConsumer`.

### [02-intermediate](./02-intermediate/) - Advanced Storage Patterns
- **Dynamic provisioning**: Automatically provision storage when a PersistentVolumeClaim is created.
- **Storage classes with parameters**: Use parameters to customize the storage that is provisioned by a StorageClass.
- **Volume expansion**: Expand the size of a PersistentVolume after it has been created.
- **Snapshot and restore**: Create snapshots of your persistent volumes for backup and restore.

### [03-advanced](./03-advanced/) - Enterprise Storage
- **Multi-zone storage**: Provision storage that is replicated across multiple availability zones for high availability.
- **Storage monitoring**: Monitor the usage and performance of your persistent volumes.
- **Backup strategies**: Implement backup and restore strategies for your persistent volumes.
- **Performance optimization**: Optimize the performance of your persistent volumes.

## PV, PVC, and StorageClass

- **PersistentVolume (PV)**: A piece of storage in the cluster that has been provisioned by an administrator. It is a resource in the cluster just like a node is a cluster resource.
- **PersistentVolumeClaim (PVC)**: A request for storage by a user. It is similar to a Pod. Pods consume node resources and PVCs consume PV resources.
- **StorageClass**: Provides a way for administrators to describe the "classes" of storage they offer. Different classes might map to quality-of-service levels, or to backup policies, or to arbitrary policies determined by the cluster administrators.

## Quick Start

```bash
# Create a PersistentVolume and a PersistentVolumeClaim
kubectl apply -f 01-basic/pv-pvc-example.yaml

# Check the status of the PV and PVC
kubectl get pv,pvc
```