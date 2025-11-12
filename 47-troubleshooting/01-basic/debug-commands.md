# Kubernetes Troubleshooting Commands

## Pod Troubleshooting
```bash
# Get pod status and events
kubectl get pods -o wide
kubectl describe pod <pod-name>

# Check pod logs
kubectl logs <pod-name>
kubectl logs <pod-name> -c <container-name>
kubectl logs <pod-name> --previous

# Execute commands in pod
kubectl exec -it <pod-name> -- /bin/bash
kubectl exec <pod-name> -c <container-name> -- ps aux

# Debug with temporary pod
kubectl run debug --image=busybox:1.35 --rm -it -- sh
```

## Service and Network Troubleshooting
```bash
# Check services and endpoints
kubectl get svc,ep
kubectl describe service <service-name>

# Test DNS resolution
kubectl run test --image=busybox:1.35 --rm -it -- nslookup <service-name>
kubectl run test --image=busybox:1.35 --rm -it -- wget -qO- <service-name>

# Network connectivity
kubectl exec <pod-name> -- ping <target-ip>
kubectl exec <pod-name> -- telnet <service-name> <port>
```

## Resource Troubleshooting
```bash
# Check resource usage
kubectl top nodes
kubectl top pods
kubectl describe node <node-name>

# Check resource quotas and limits
kubectl describe quota
kubectl describe limitrange

# Check events
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl get events --field-selector involvedObject.name=<pod-name>
```

## Storage Troubleshooting
```bash
# Check PVs and PVCs
kubectl get pv,pvc
kubectl describe pvc <pvc-name>

# Check storage classes
kubectl get storageclass
kubectl describe storageclass <sc-name>

# Check volume mounts
kubectl describe pod <pod-name> | grep -A 10 Volumes
```

## Cluster Troubleshooting
```bash
# Check cluster info
kubectl cluster-info
kubectl get nodes -o wide
kubectl get componentstatuses

# Check system pods
kubectl get pods -n kube-system
kubectl logs -n kube-system <system-pod-name>

# Check API server
kubectl get --raw /healthz
kubectl get --raw /api/v1
```