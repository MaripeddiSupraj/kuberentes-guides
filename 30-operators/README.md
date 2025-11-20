# Operators - Custom Controllers

An Operator is a method of packaging, deploying, and managing a Kubernetes application. A Kubernetes application is an application that is both deployed on Kubernetes and managed using the Kubernetes APIs and `kubectl` tooling.

## Learning Path

### [01-basic](./01-basic/) - Operator Fundamentals
- **What are Operators**: Understand the concept of an Operator and the problems it solves.
- **Operator pattern**: Learn about the Operator pattern and how it is used to build custom controllers.
- **Custom Resource Definitions**: Use CustomResourceDefinitions to define the API for your Operator.
- **Controller logic**: Implement the controller logic for your Operator to watch for changes to your Custom Resources and take action to bring the cluster to the desired state.

### [02-intermediate](./02-intermediate/) - Building Operators
- **Operator SDK**: Use the Operator SDK to build, test, and package your Operator.
- **Controller reconciliation**: Implement the reconciliation loop for your Operator to ensure that the state of the cluster matches the desired state.
- **Event handling**: Handle events in your Operator to provide feedback to users.
- **Status management**: Manage the status of your Custom Resources to provide users with information about the state of their applications.

### [03-advanced](./03-advanced/) - Enterprise Operators
- **Multi-tenant operators**: Build Operators that can manage applications for multiple tenants in a shared cluster.
- **Operator lifecycle management**: Manage the lifecycle of your Operator, including installation, upgrades, and uninstallation.
- **Testing strategies**: Implement a testing strategy for your Operator to ensure that it is reliable and robust.
- **Production deployment**: Deploy your Operator to a production environment.

## Operator Maturity Levels

1. **Basic Install**: The Operator can automate the installation of the application.
2. **Seamless Upgrades**: The Operator can automate the upgrade of the application.
3. **Full Lifecycle**: The Operator can manage the entire lifecycle of the application, including installation, upgrades, and uninstallation.
4. **Deep Insights**: The Operator can provide deep insights into the health and performance of the application.
5. **Auto Pilot**: The Operator can automatically manage the application, including scaling, healing, and tuning.

## Quick Start

```bash
# Apply the Operator resources
kubectl apply -f 01-basic/simple-operator.yaml

# Check the status of the Operator
kubectl get pods -l app=simple-operator
```