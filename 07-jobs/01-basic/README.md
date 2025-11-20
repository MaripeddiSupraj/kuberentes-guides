# Basic Jobs

This example demonstrates how to create basic Jobs for running tasks to completion.

## What is a Job?

A **Job** is a Kubernetes object that creates one or more Pods and ensures that a specified number of them successfully terminate. Jobs are useful for running batch processing, data processing, and other one-time tasks.

## Examples in this Section

- `simple-job.yaml`: A basic Job that runs a single Pod to completion. The `backoffLimit` field is set to 4, which means that the Job will be marked as failed if the Pod fails 4 times.
- `parallel-job.yaml`: A Job that runs multiple Pods in parallel. The `parallelism` field is set to 3, which means that 3 Pods will run in parallel. The `completions` field is set to 6, which means that the Job will be complete when 6 Pods have successfully terminated.

## Common Operations

```bash
# Create a Job from a manifest file
kubectl apply -f simple-job.yaml

# Check the status of the Job
kubectl get jobs

# Get detailed information about the Job
kubectl describe job data-processor

# View the logs of the Pods created by the Job
kubectl logs -l job-name=data-processor
```
