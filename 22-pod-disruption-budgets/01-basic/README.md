# Basic Pod Disruption Budget

This example demonstrates how to create a basic PodDisruptionBudget (PDB) to protect an application from voluntary disruptions.

## What is a Pod Disruption Budget?

A **PodDisruptionBudget (PDB)** is a Kubernetes object that limits the number of Pods of a replicated application that are simultaneously down from voluntary disruptions. PDBs are a powerful tool for ensuring the availability of your applications during planned maintenance, such as node drains and cluster upgrades.

## Example in this Section

- `pdb-example.yaml`: This file defines a Deployment, a StatefulSet, and two PodDisruptionBudgets.
  - The **Deployment** creates 5 replicas of an NGINX web server.
  - The first **PodDisruptionBudget** uses `minAvailable` to ensure that at least 3 replicas of the `web-app` are always available.
  - The **StatefulSet** creates 3 replicas of a PostgreSQL database.
  - The second **PodDisruptionBudget** uses `maxUnavailable` to ensure that no more than 1 replica of the `database` is unavailable at any given time.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f pdb-example.yaml

# Check the status of the PodDisruptionBudgets
kubectl get poddisruptionbudgets
```
