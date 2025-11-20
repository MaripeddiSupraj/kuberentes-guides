# Storage Classes - Dynamic Provisioning

A StorageClass provides a way for administrators to describe the "classes" of storage they offer. Different classes might map to quality-of-service levels, or to backup policies, or to arbitrary policies determined by the cluster administrators.

## Learning Path

### [01-basic](./01-basic/) - Storage Class Fundamentals
- **Creating Storage Classes**: Learn how to create a StorageClass to define a class of storage.
- **Dynamic provisioning**: Use a StorageClass to dynamically provision a PersistentVolume when a PersistentVolumeClaim is created.
- **Provisioner types**: Understand the different types of provisioners that can be used with a StorageClass.
- **Volume binding modes**: Configure the volume binding mode for a StorageClass to control when a PersistentVolume is provisioned.

### [02-intermediate](./02-intermediate/) - Advanced Storage Classes
- **Custom parameters**: Use parameters to customize the storage that is provisioned by a StorageClass.
- **Volume expansion policies**: Configure the volume expansion policy for a StorageClass to allow users to resize their volumes.
- **Reclaim policies**: Define the reclaim policy for a StorageClass to control what happens to a PersistentVolume after it is released.
- **Topology constraints**: Use topology constraints to control where a PersistentVolume is provisioned.

### [03-advanced](./03-advanced/) - Enterprise Storage Management
- **Multi-tier storage**: Create multiple tiers of storage with different performance characteristics and costs.
- **Performance classes**: Define performance classes for your storage to allow users to choose the right level of performance for their applications.
- **Cost optimization**: Use StorageClasses to optimize the cost of your storage.
- **Compliance and encryption**: Use StorageClasses to enforce compliance and encryption policies for your storage.

## StorageClass, PV, and PVC

- **StorageClass**: Defines a "class" of storage, such as "fast" or "slow".
- **PersistentVolume (PV)**: A piece of storage in the cluster.
- **PersistentVolumeClaim (PVC)**: A request for storage by a user.

When a user creates a PVC that requests a certain StorageClass, the StorageClass's provisioner will dynamically provision a PV that meets the requirements of the PVC.

## Quick Start

```bash
# Create a StorageClass
kubectl apply -f 01-basic/storage-class-example.yaml

# Create a PersistentVolumeClaim that uses the StorageClass
kubectl apply -f - <<EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: my-pvc
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
  storageClassName: my-storage-class
EOF

# Check the status of the PVC
kubectl get pvc my-pvc
```