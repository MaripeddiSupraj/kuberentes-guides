# Basic ReplicaSets

Learn ReplicaSet fundamentals for maintaining desired Pod replicas.

## Examples

- `simple-replicaset.yaml` - Basic ReplicaSet with 3 replicas

## Key Concepts

- **Desired State** - Maintains specified replica count
- **Label Selectors** - Identifies Pods to manage
- **Self-healing** - Replaces failed Pods automatically

## Commands

```bash
# Create ReplicaSet
kubectl apply -f simple-replicaset.yaml

# Scale ReplicaSet
kubectl scale replicaset nginx-replicaset --replicas=5

# Check status
kubectl get replicaset
kubectl describe replicaset nginx-replicaset
```