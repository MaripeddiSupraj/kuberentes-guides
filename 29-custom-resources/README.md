# Custom Resources - Extending Kubernetes API

A Custom Resource Definition (CRD) is a powerful feature in Kubernetes that allows you to extend the Kubernetes API with your own custom resource types.

## Learning Path

### [01-basic](./01-basic/) - CRD Fundamentals
- **Creating Custom Resource Definitions**: Learn how to create a CustomResourceDefinition to define a new resource type.
- **Custom Resource instances**: Create instances of your custom resource, which are called Custom Resources (CRs).
- **Schema validation**: Use OpenAPI v3 schema to validate your Custom Resources.
- **API versioning**: Manage multiple versions of your Custom Resources.

### [02-intermediate](./02-intermediate/) - Advanced CRD Features
- **OpenAPI schema validation**: Use more advanced OpenAPI schema features to validate your Custom Resources.
- **Subresources (status, scale)**: Add `status` and `scale` subresources to your Custom Resources.
- **Multiple versions**: Manage multiple versions of your Custom Resources and provide a conversion webhook to convert between them.
- **Conversion webhooks**: Create a conversion webhook to convert your Custom Resources between different versions.

### [03-advanced](./03-advanced/) - Enterprise Custom Resources
- **Custom controllers**: Build a custom controller to watch and act on your Custom Resources.
- **Operator patterns**: Use the operator pattern to build a production-grade controller for your Custom Resources.
- **API aggregation**: Use API aggregation to extend the Kubernetes API with your own custom API server.
- **Custom resource governance**: Implement governance policies for your Custom Resources.

## Key Components

- **CustomResourceDefinition (CRD)**: Defines the schema for a custom resource.
- **Custom Resource (CR)**: An instance of a custom resource.
- **Controller**: A piece of code that watches for changes to Custom Resources and takes action to bring the cluster to the desired state.
- **Validation**: The process of ensuring that a Custom Resource is valid according to its schema.

## Quick Start

```bash
# Create a CustomResourceDefinition
kubectl apply -f 01-basic/webapp-crd.yaml

# Create a Custom Resource
kubectl apply -f - <<EOF
apiVersion: "example.com/v1"
kind: WebApp
metadata:
  name: my-webapp
spec:
  title: "My Web App"
  image: "nginx:1.21"
EOF

# Check the status of the Custom Resource
kubectl get webapps
```