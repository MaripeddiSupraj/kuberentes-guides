# Basic ReplicaSets

Learn the fundamentals of ReplicaSets for maintaining a desired number of Pod replicas.

## What is a ReplicaSet?

A **ReplicaSet** is a Kubernetes object that ensures a specified number of Pod replicas are running at any given time. It is the next generation of the ReplicationController and is the basis for the scaling and self-healing capabilities of Deployments.

**Note:** While you can use ReplicaSets directly, it is highly recommended to manage them using **Deployments**, as Deployments provide declarative updates and other useful features.

## Examples in this Section

- `simple-replicaset.yaml`: A basic ReplicaSet manifest that ensures 3 replicas of an NGINX Pod are always running.

## Key Concepts

- **Desired State**: The primary function of a ReplicaSet is to maintain a stable set of replica Pods running at any given time.
- **Label Selectors**: ReplicaSets use label selectors to identify the Pods that they should manage.
- **Self-healing**: If a Pod managed by a ReplicaSet fails or is deleted, the ReplicaSet controller will automatically create a new Pod to replace it.

## Common Operations

```bash
# Create a ReplicaSet from a manifest file
kubectl apply -f simple-replicaset.yaml

# Scale the number of replicas in a ReplicaSet
kubectl scale replicaset nginx-replicaset --replicas=5

# Check the status of the ReplicaSet
kubectl get replicaset

# Get detailed information about the ReplicaSet
kubectl describe replicaset nginx-replicaset
```