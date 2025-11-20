# Helm - Package Management

Helm is a package manager for Kubernetes that helps you manage Kubernetes applications. Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

## Learning Path

### [01-basic](./01-basic/) - Helm Fundamentals
- **Installing Helm**: Learn how to install the Helm CLI.
- **Creating charts**: Create your first Helm chart.
- **Templates and values**: Use templates and values to create configurable charts.
- **Installing releases**: Install a Helm chart to create a release.

### [02-intermediate](./02-intermediate/) - Advanced Helm Usage
- **Chart dependencies**: Manage dependencies between Helm charts.
- **Hooks and tests**: Use hooks and tests to automate tasks and validate your releases.
- **Custom functions**: Create custom template functions to extend Helm's functionality.
- **Repository management**: Manage your own Helm chart repositories.

### [03-advanced](./03-advanced/) - Enterprise Helm Patterns
- **Multi-environment deployments**: Use Helm to manage deployments to multiple environments.
- **GitOps with Helm**: Use Helm with a GitOps workflow to manage your Kubernetes applications.
- **Security and signing**: Sign your Helm charts to ensure their integrity.
- **Custom operators with Helm**: Use Helm to create custom operators.

## Key Concepts

- **Chart**: A Helm package. It contains all of the resource definitions necessary to run an application, tool, or service inside of a Kubernetes cluster.
- **Template**: A Kubernetes manifest file that is written in Go template format.
- **Values**: A set of configuration parameters that can be used to customize a Helm chart.
- **Release**: An instance of a chart running in a Kubernetes cluster.

## Quick Start

```bash
# Install Helm
# (Follow the instructions in the official Helm documentation)

# Create a new chart
helm create my-chart

# Install the chart
helm install my-release ./my-chart

# Check the status of the release
helm list
```