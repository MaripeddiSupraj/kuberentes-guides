# Basic Debugging

This example demonstrates how to use a debugging toolkit to troubleshoot issues in a Kubernetes cluster.

## What is a Debugging Toolkit?

A **debugging toolkit** is a container image that contains a collection of tools for debugging applications and infrastructure. These tools can be used to inspect the state of your cluster, analyze network traffic, and troubleshoot performance issues.

## Example in this Section

- `debug-toolkit.yaml`: This file defines a Pod with a debugging toolkit image (`nicolaka/netshoot`), a ConfigMap with some debugging scripts, and a Deployment for a sample application to debug.
  - The **Pod** is named `debug-toolkit` and contains a collection of useful debugging tools.
  - The **ConfigMap** contains some debugging scripts that can be used to quickly gather information about your cluster.
  - The **Deployment** is for a sample application that can be used for debugging practice.

**Note:** The `debug-toolkit` Pod in this example is running with elevated privileges, which is a security risk. This is necessary for the debugging tools to be able to access the host system. In a production environment, you should consider using a more secure method of debugging, such as using a dedicated debugging node or using a CNI plugin that provides debugging features.

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f debug-toolkit.yaml

# Exec into the debug-toolkit Pod
kubectl exec -it debug-toolkit -- /bin/sh

# Use the debugging scripts
/etc/debug-scripts/debug-pod.sh <pod-name>
```
