# Basic Troubleshooting

This section provides some examples of common problems that you may encounter when working with Kubernetes, and a list of useful commands for troubleshooting.

## Problem Pods

The `problem-pod.yaml` file contains several Pods that are designed to fail in different ways. You can use these Pods to practice your troubleshooting skills.

- **crashloop-example**: This Pod will start, run for 5 seconds, and then exit with an error code. Kubernetes will then restart the Pod, and it will enter a `CrashLoopBackOff` state.
- **imagepull-example**: This Pod will fail to start because the container image does not exist. It will enter an `ImagePullBackOff` state.
- **resource-limit-example**: This Pod will be terminated by Kubernetes because it tries to use more memory than its limit. It will have a status of `OOMKilled`.
- **dns-test-pod**: This Pod is a healthy pod that can be used to test DNS resolution and network connectivity.
- **broken-service**: This Service is broken because it is trying to select pods with a label that does not exist.

## Debugging Commands

The `debug-commands.md` file contains a list of useful `kubectl` commands for troubleshooting.

## Common Operations

```bash
# Apply the problem pods from the manifest file
kubectl apply -f problem-pod.yaml

# Check the status of the pods
kubectl get pods

# Use the commands in debug-commands.md to troubleshoot the pods
```
