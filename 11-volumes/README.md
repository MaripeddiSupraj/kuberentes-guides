# Volumes - Data Persistence

Volumes provide a way to store data that can be accessed by the containers in a Pod. Kubernetes supports many types of volumes, each with its own characteristics and use cases.

## Learning Path

### [01-basic](./01-basic/) - Volume Fundamentals
- **emptyDir**: A temporary volume that is created when a Pod is assigned to a Node, and exists as long as that Pod is running on that node.
- **hostPath**: Mounts a file or directory from the host node's filesystem into your Pod.
- **configMap**: Provides a way to inject configuration data into Pods.
- **secret**: Provides a way to inject sensitive data, such as passwords, into Pods.

### [02-intermediate](./02-intermediate/) - Persistent Storage
- **PersistentVolume (PV)**: A piece of storage in the cluster that has been provisioned by an administrator.
- **PersistentVolumeClaim (PVC)**: A request for storage by a user.
- **StorageClass**: Describes the "classes" of storage you have available.

### [03-advanced](./03-advanced/) - Advanced Storage Patterns
- **Dynamic Provisioning**: Automatically provision storage when a PVC is created.
- **Volume Snapshots**: Create snapshots of your persistent volumes for backup and restore.
- **Volume Cloning**: Create a new volume from an existing volume.
- **Container Storage Interface (CSI)**: An interface for exposing arbitrary block and file storage systems to containerized workloads on Kubernetes.

## Volume Types

| Type | Description |
|------|-------------|
| emptyDir | A temporary volume that is created when a Pod is assigned to a Node. |
| hostPath | Mounts a file or directory from the host node's filesystem into your Pod. |
| persistentVolumeClaim | Mounts a PersistentVolume into your Pod. |
| configMap | Provides a way to inject configuration data into Pods. |
| secret | Provides a way to inject sensitive data, such as passwords, into Pods. |
| nfs | Mounts an existing NFS (Network File System) share into your Pod. |
| and many more... | |
