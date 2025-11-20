# ConfigMaps - Configuration Data

A ConfigMap is a Kubernetes object that stores non-confidential configuration data in key-value pairs. It allows you to decouple your configuration from your application code, making your applications more portable and easier to manage.

## Learning Path

### [01-basic](./01-basic/) - ConfigMap Fundamentals
- **Creating ConfigMaps**: Learn how to create a ConfigMap from literal values, files, and directories.
- **Using ConfigMaps in Pods**: Discover how to consume ConfigMap data in your Pods.
- **Environment variables from ConfigMaps**: Inject ConfigMap data into your containers as environment variables.
- **Volume mounts for configuration files**: Mount a ConfigMap as a volume to expose its data as files to your containers.

### [02-intermediate](./02-intermediate/) - Advanced Configuration Patterns
- **Binary data in ConfigMaps**: Store binary data in a ConfigMap.
- **ConfigMap updates and Pod restarts**: Understand how changes to a ConfigMap are propagated to Pods and how to trigger a rolling update.
- **Selective key mounting**: Mount specific keys from a ConfigMap as files in a volume.
- **Configuration validation**: Validate the data in a ConfigMap before it is used by your application.

### [03-advanced](./03-advanced/) - Enterprise Configuration Management
- **Configuration templating**: Use tools like Helm or Kustomize to template your ConfigMaps.
- **Multi-environment configurations**: Manage configurations for different environments (e.g., development, staging, production).
- **Configuration drift detection**: Detect when the configuration of your running applications has drifted from the desired state.
- **GitOps configuration management**: Manage your ConfigMaps using a GitOps workflow.

## Usage Patterns

- **Environment Variables**: Inject ConfigMap data into your containers as environment variables.
- **Command Arguments**: Use ConfigMap data as command-line arguments for your container's entrypoint.
- **Volume Mounts**: Mount a ConfigMap as a volume to expose its data as files to your containers.
- **Init Containers**: Use an init container to process the data in a ConfigMap before the main application container starts.

## Quick Start

```bash
# Create a ConfigMap from a literal value
kubectl create configmap my-config --from-literal=app.color=blue

# Create a simple Pod that consumes the ConfigMap
kubectl apply -f 01-basic/app-config.yaml

# Check the logs of the Pod
kubectl logs my-pod
```