# Debugging - Application Debugging

Debugging is the process of finding and fixing errors in your applications. Debugging applications in a Kubernetes cluster can be challenging, but there are a number of tools and techniques that you can use to make it easier.

## Learning Path

### [01-basic](./01-basic/) - Basic Debugging
- **Container debugging**: Learn how to debug your applications by running commands inside your containers.
- **Log analysis**: Analyze the logs of your applications to identify the root cause of problems.
- **Resource inspection**: Inspect the resources of your applications, such as CPU, memory, and storage, to identify performance bottlenecks.
- **Network debugging**: Debug network issues in your cluster, such as DNS resolution failures and service connectivity problems.

### [02-intermediate](./02-intermediate/) - Advanced Debugging
- **Performance profiling**: Use performance profiling tools to identify performance bottlenecks in your applications.
- **Memory analysis**: Analyze the memory usage of your applications to identify memory leaks and other issues.
- **Distributed debugging**: Debug issues that span multiple services in a distributed system.
- **Security debugging**: Debug security-related issues, such as RBAC permission errors and PodSecurityPolicy violations.

### [03-advanced](./03-advanced/) - Expert Debugging
- **Kernel-level debugging**: Use kernel-level debugging tools to debug issues with the Linux kernel.
- **Custom debugging tools**: Build your own custom debugging tools to meet the specific needs of your applications.
- **Production debugging**: Debug issues in a production environment without impacting your users.
- **Automated debugging**: Automate your debugging process to save time and money.

## Debugging Tools

- **kubectl**: The Kubernetes command-line tool can be used for basic debugging tasks, such as viewing logs and running commands in containers.
- **crictl**: A command-line interface for CRI-compatible container runtimes.
- **tcpdump**: A command-line tool for capturing and analyzing network traffic.
- **strace**: A command-line tool for tracing system calls and signals.

## Quick Start

```bash
# Apply the debugging resources
kubectl apply -f 01-basic/debug-toolkit.yaml

# Exec into the debug pod
kubectl exec -it debug-toolkit -- /bin/sh
```