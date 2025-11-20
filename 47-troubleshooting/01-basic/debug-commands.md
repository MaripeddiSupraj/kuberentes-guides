# Kubernetes Troubleshooting Commands

This file provides a quick reference for common `kubectl` commands used for troubleshooting.

## Pod Troubleshooting
```bash
# Get a high-level overview of pod status in the current namespace
kubectl get pods -o wide

# Get detailed information about a pod, including events
kubectl describe pod <pod-name>

# View the logs of a pod
kubectl logs <pod-name>

# View the logs of a specific container in a multi-container pod
kubectl logs <pod-name> -c <container-name>

# View the logs of a previous instance of a container
kubectl logs <pod-name> --previous

# Execute a command in a running container
kubectl exec -it <pod-name> -- /bin/bash

# Execute a command in a specific container of a multi-container pod
kubectl exec <pod-name> -c <container-name> -- ps aux

# Create a temporary pod for debugging purposes
kubectl run debug --image=busybox:1.35 --rm -it -- sh
```

## Service and Network Troubleshooting
```bash
# Check the status of services and their endpoints
kubectl get svc,ep

# Get detailed information about a service
kubectl describe service <service-name>

# Test DNS resolution for a service
kubectl run test --image=busybox:1.35 --rm -it -- nslookup <service-name>

# Test connectivity to a service
kubectl run test --image=busybox:1.35 --rm -it -- wget -qO- <service-name>

# Ping a target IP from within a pod
kubectl exec <pod-name> -- ping <target-ip>

# Test connectivity to a service and port from within a pod
kubectl exec <pod-name> -- telnet <service-name> <port>
```

## Resource Troubleshooting
```bash
# Check the resource usage of nodes
kubectl top nodes

# Check the resource usage of pods
kubectl top pods

# Get detailed information about a node, including resource allocation
kubectl describe node <node-name>

# Check the resource quotas for a namespace
kubectl describe quota

# Check the limit ranges for a namespace
kubectl describe limitrange

# Get all events in the current namespace, sorted by timestamp
kubectl get events --sort-by=.metadata.creationTimestamp

# Get events for a specific pod
kubectl get events --field-selector involvedObject.name=<pod-name>
```

## Storage Troubleshooting
```bash
# Check the status of PersistentVolumes and PersistentVolumeClaims
kubectl get pv,pvc

# Get detailed information about a PersistentVolumeClaim
kubectl describe pvc <pvc-name>

# Check the available StorageClasses
kubectl get storageclass

# Get detailed information about a StorageClass
kubectl describe storageclass <sc-name>

# Check the volume mounts for a pod
kubectl describe pod <pod-name> | grep -A 10 Volumes
```

## Cluster Troubleshooting
```bash
# Get information about the cluster and its components
kubectl cluster-info

# Get the status of all nodes in the cluster
kubectl get nodes -o wide

# Get the status of the control plane components
kubectl get componentstatuses

# Get the pods running in the kube-system namespace
kubectl get pods -n kube-system

# View the logs of a system pod
kubectl logs -n kube-system <system-pod-name>

# Check the health of the API server
kubectl get --raw /healthz

# Get the available API versions
kubectl get --raw /api/v1
```