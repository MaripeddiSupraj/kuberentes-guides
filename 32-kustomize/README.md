# Kustomize - Configuration Management

Kustomize is a tool for customizing Kubernetes configurations. It allows you to manage your application configuration in a declarative way, without using templates.

## Learning Path

### [01-basic](./01-basic/) - Kustomize Fundamentals
- **Base and overlay structure**: Learn how to use a base and overlay structure to manage configurations for different environments.
- **Resource patching**: Use patches to modify your Kubernetes resources for a specific environment.
- **ConfigMap and Secret generators**: Use generators to create ConfigMaps and Secrets from files or literal values.
- **Common labels and annotations**: Add common labels and annotations to all of your resources.

### [02-intermediate](./02-intermediate/) - Advanced Kustomization
- **Strategic merge patches**: Use strategic merge patches to perform more complex modifications to your resources.
- **JSON patches**: Use JSON patches to perform fine-grained modifications to your resources.
- **Multi-environment management**: Manage configurations for multiple environments, such as development, staging, and production.
- **Component composition**: Use components to create reusable pieces of configuration.

### [03-advanced](./03-advanced/) - Enterprise Configuration
- **GitOps with Kustomize**: Use Kustomize with a GitOps workflow to manage your Kubernetes applications.
- **Plugin development**: Develop your own Kustomize plugins to extend its functionality.
- **Validation and testing**: Validate and test your Kustomize configurations.
- **CI/CD integration**: Integrate Kustomize with your CI/CD pipeline.

## Key Features

- **Declarative**: Kustomize is purely declarative. You describe the desired state of your application, and Kustomize figures out how to get there.
- **Layered**: Kustomize uses a layered approach to configuration management. You have a base configuration that is common to all environments, and then you have overlays that customize the configuration for each environment.
- **Generators**: Kustomize can generate ConfigMaps and Secrets from files or literal values.
- **Transformers**: Kustomize can transform your resources in a systematic way, such as adding a common label to all of your resources.

## Quick Start

```bash
# Apply the Kustomize configuration
kubectl apply -k 01-basic/

# Check the resources created by Kustomize
kubectl get all -l app=my-app
```