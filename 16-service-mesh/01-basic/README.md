# Basic Service Mesh with Istio

This example demonstrates how to deploy a basic application in an Istio service mesh.

## What is Istio?

**Istio** is a popular open-source service mesh that provides a way to control how microservices share data with one another. It provides features like traffic management, security, and observability for your microservices.

## Example in this Section

- `istio-basic.yaml`: This file defines the resources for the Istio bookinfo sample application.
  - **Namespaces**: The `istio-system` and `bookinfo` namespaces are created. The `bookinfo` namespace is labeled with `istio-injection: enabled`, which tells Istio to automatically inject the sidecar proxy into any Pods that are created in this namespace.
  - **Deployment**: The `productpage-v1` Deployment creates a single replica of the `productpage` service.
  - **Service**: The `productpage` Service exposes the `productpage` Deployment on a ClusterIP.
  - **Gateway**: The `bookinfo-gateway` Gateway exposes the `productpage` service to the outside world.
  - **VirtualService**: The `bookinfo` VirtualService routes traffic from the gateway to the `productpage` service.

## Before You Begin

This example requires Istio to be installed in your cluster. If you have not already installed Istio, you can do so by following the instructions in the [Istio documentation](https://istio.io/latest/docs/setup/getting-started/).

## Common Operations

```bash
# Apply the resources from the manifest file
kubectl apply -f istio-basic.yaml

# Find the IP address and port of the Istio Ingress Gateway
export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].port}')

# Access the productpage service
curl -s "http://${INGRESS_HOST}:${INGRESS_PORT}/productpage" | grep -o "<title>.*</title>"
```
