# Troubleshooting - Problem Diagnosis

Troubleshooting is the process of diagnosing and resolving issues in your Kubernetes cluster and applications. It is an essential skill for any Kubernetes administrator or developer.

## Learning Path

### [01-basic](./01-basic/) - Basic Troubleshooting
- **kubectl debugging commands**: Learn how to use `kubectl` commands like `describe`, `logs`, and `exec` to debug your applications.
- **Pod lifecycle issues**: Troubleshoot common Pod lifecycle issues, such as `CrashLoopBackOff`, `ImagePullBackOff`, and `Pending`.
- **Service connectivity problems**: Troubleshoot common Service connectivity problems, such as DNS resolution issues and network policy issues.
- **Resource constraints**: Troubleshoot issues related to resource requests, limits, and quotas.

### [02-intermediate](./02-intermediate/) - Advanced Diagnostics
- **Network troubleshooting**: Use tools like `netshoot` and `tcpdump` to troubleshoot network issues in your cluster.
- **Storage issues**: Troubleshoot common storage issues, such as PersistentVolumeClaim binding errors and volume mount failures.
- **Performance problems**: Identify and debug performance bottlenecks in your applications.
- **Security-related issues**: Troubleshoot security-related issues, such as RBAC permission errors and PodSecurityPolicy violations.

### [03-advanced](./03-advanced/) - Expert Troubleshooting
- **Cluster-level issues**: Troubleshoot cluster-level issues, such as node failures and control plane issues.
- **Control plane problems**: Troubleshoot issues with the Kubernetes control plane components, such as the API server, controller manager, and scheduler.
- **Custom resource debugging**: Debug issues with your custom resources and controllers.
- **Production incident response**: Respond to production incidents in a timely and effective manner.

## Common Issues

- **Pod Issues**: `CrashLoopBackOff`, `ImagePullBackOff`, `Pending`, `OOMKilled`
- **Network Issues**: DNS resolution failures, service connectivity problems, network policy issues
- **Storage Issues**: PersistentVolumeClaim binding errors, volume mount failures
- **Resource Issues**: CPU/memory limits, resource quotas, eviction

## Quick Start

```bash
# Describe a Pod to get more information about it
kubectl describe pod my-pod

# Get the logs of a Pod
kubectl logs my-pod

# Exec into a Pod to run commands
kubectl exec -it my-pod -- /bin/sh
```