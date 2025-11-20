# Basic Compliance

This example demonstrates how to implement some basic compliance controls in a Kubernetes cluster.

## What is Compliance?

**Compliance** is the process of ensuring that your Kubernetes cluster and applications meet the requirements of a specific security standard or regulation.

## Example in this Section

- `cis-compliance.yaml`: This file defines several resources related to compliance.
  - A **Namespace** with a compliance label.
  - A **ConfigMap** with an audit policy.
  - A **Pod** that is configured to be compliant with the CIS benchmarks.
  - A **NetworkPolicy** to restrict traffic.
  - A **ServiceAccount** and a **CronJob** for running a compliance scanner (kube-bench).

## Key Concepts

- **CIS Benchmarks**: A set of best practices for securing Kubernetes.
- **Audit Logging**: The process of recording all of the activity in your cluster.
- **Network Policies**: A way to control the traffic flow between Pods.
- **Compliance Scanning**: The process of scanning your cluster for compliance with security standards.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f cis-compliance.yaml

# Check the status of the CronJob
kubectl get cronjobs -n compliance
```
