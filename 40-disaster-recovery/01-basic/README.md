# Basic Disaster Recovery

This example demonstrates a basic disaster recovery setup for a Kubernetes cluster.

## What is Disaster Recovery?

**Disaster recovery (DR)** is the process of restoring your Kubernetes cluster to a functional state after a disaster. A disaster can be anything from a hardware failure to a natural disaster.

## Example in this Section

- `dr-setup.yaml`: This file defines several resources related to disaster recovery.
  - A **CronJob** that backs up cluster resources every 6 hours.
  - A **PersistentVolumeClaim** for storing the backups.
  - A **Deployment** and a **ConfigMap** for a Prometheus-based monitoring solution to detect cluster failures.

## Key Concepts

- **Backup**: The process of creating a copy of your data and configuration.
- **Monitoring**: The process of monitoring your cluster for signs of a disaster.
- **Failover**: The process of switching over to a secondary cluster in the event of a disaster.
- **Recovery**: The process of restoring your cluster to a functional state after a disaster.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f dr-setup.yaml

# Check the status of the CronJob
kubectl get cronjobs -n disaster-recovery

# Check the status of the monitoring Deployment
kubectl get deployments -n disaster-recovery
```
