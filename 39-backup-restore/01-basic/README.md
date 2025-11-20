# Basic Backup and Restore

This section provides examples of different backup strategies for a Kubernetes cluster.

## What is Backup and Restore?

**Backup and restore** are critical processes for protecting your Kubernetes cluster from data loss. There are several different types of data that you need to back up, including the cluster state, persistent data, and application configurations.

## Examples in this Section

- `etcd-backup.yaml`: This file defines several resources related to backup.
  - A **CronJob** that backs up the etcd database every day at 2 AM.
  - A **PersistentVolumeClaim** for storing the backups.
  - A **CronJob** for creating backups with Velero.
  - A **ConfigMap** with a script that backs up various cluster resources using `kubectl`.

## Backup Strategies

There are several different strategies for backing up a Kubernetes cluster. The best strategy for you will depend on your specific needs and requirements.

- **etcd Backup**: Backing up the etcd database is the most important part of backing up your cluster state. The etcd database stores all of the objects in your cluster, including Pods, Services, and Deployments.
- **Persistent Volume Backup**: If you are using persistent volumes to store data, you will need to back them up separately. You can do this using snapshots or other methods.
- **Application Configuration Backup**: You should also back up the configuration of your applications, such as Deployments, Services, and ConfigMaps. You can do this using `kubectl` or other tools.
- **Velero**: Velero is an open-source tool that can be used to back up and restore your Kubernetes cluster. It can back up your cluster state, persistent volumes, and application configurations.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f etcd-backup.yaml

# Check the status of the CronJobs
kubectl get cronjobs -n kube-system
kubectl get cronjobs -n velero
```
