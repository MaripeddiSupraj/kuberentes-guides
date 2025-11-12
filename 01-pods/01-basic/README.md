# Basic Pods

Learn the fundamentals of Kubernetes Pods with simple, practical examples.

## What is a Pod?

A Pod is the smallest deployable unit in Kubernetes that can hold one or more containers. Containers in a Pod:
- Share the same network (IP address and port space)
- Share storage volumes
- Are scheduled together on the same node
- Live and die together

## Examples in this Section

1. **simple-pod.yaml** - Your first Pod with a single container
2. **pod-with-labels.yaml** - Adding labels and annotations
3. **pod-with-env.yaml** - Environment variables
4. **pod-commands.yaml** - Custom commands and arguments

## Hands-on Exercises

### 1. Create Your First Pod

```bash
# Apply the simple pod
kubectl apply -f simple-pod.yaml

# Check if it's running
kubectl get pods

# Get detailed information
kubectl describe pod my-first-pod

# View logs
kubectl logs my-first-pod

# Delete the pod
kubectl delete pod my-first-pod
```

### 2. Working with Labels

```bash
# Create pod with labels
kubectl apply -f pod-with-labels.yaml

# List pods with labels
kubectl get pods --show-labels

# Filter by labels
kubectl get pods -l app=nginx

# Clean up
kubectl delete -f pod-with-labels.yaml
```

## Key Commands to Remember

```bash
kubectl get pods                    # List all pods
kubectl describe pod <pod-name>     # Detailed pod information
kubectl logs <pod-name>            # View pod logs
kubectl exec -it <pod-name> -- bash # Execute commands in pod
kubectl delete pod <pod-name>       # Delete a pod
```