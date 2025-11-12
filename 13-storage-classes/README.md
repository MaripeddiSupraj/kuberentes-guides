# Storage Classes - Dynamic Provisioning

Storage Classes enable dynamic provisioning of Persistent Volumes with different storage types and parameters.

## Learning Path

### [01-basic](./01-basic/) - Storage Class Fundamentals
- Creating Storage Classes
- Dynamic provisioning
- Provisioner types
- Volume binding modes

### [02-intermediate](./02-intermediate/) - Advanced Storage Classes
- Custom parameters
- Volume expansion policies
- Reclaim policies
- Topology constraints

### [03-advanced](./03-advanced/) - Enterprise Storage Management
- Multi-tier storage
- Performance classes
- Cost optimization
- Compliance and encryption

## Common Provisioners

- **kubernetes.io/aws-ebs** - AWS Elastic Block Store
- **kubernetes.io/gce-pd** - Google Compute Engine Persistent Disk
- **kubernetes.io/azure-disk** - Azure Disk
- **csi-driver** - Container Storage Interface drivers