# Basic CronJob

This example demonstrates how to create a basic CronJob for running a scheduled task.

## What is a CronJob?

A **CronJob** is a Kubernetes object that creates Jobs on a time-based schedule. It is useful for running periodic tasks, such as backups, report generation, and other automated jobs.

## Example in this Section

- `backup-cronjob.yaml`: A CronJob that runs a database backup every day at 2 AM. The backup is stored in a `PersistentVolumeClaim`.

## Key Concepts

- **Schedule**: The `schedule` field defines the schedule for the CronJob in cron format.
- **Job Template**: The `jobTemplate` field is a template for the Jobs that the CronJob will create.
- **Concurrency Policy**: The `concurrencyPolicy` field specifies how to treat concurrent executions of a Job.
- **History Limits**: The `successfulJobsHistoryLimit` and `failedJobsHistoryLimit` fields specify how many completed and failed Jobs should be kept.

## Before You Begin

This example requires a `PersistentVolumeClaim` named `backup-pvc` to be available in your cluster.

## Common Operations

```bash
# Create a CronJob from a manifest file
kubectl apply -f backup-cronjob.yaml

# Check the status of the CronJob
kubectl get cronjobs

# See the Jobs created by the CronJob
kubectl get jobs --watch
```
