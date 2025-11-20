# Basic Services

Learn the fundamentals of Kubernetes Services for networking and service discovery.

## Key Concepts

A **Service** in Kubernetes is an abstraction that defines a logical set of Pods and a policy by which to access them. Services enable a loose coupling between dependent Pods, providing a stable endpoint (IP address and DNS name) for a group of Pods.

## Examples in this Section

- `clusterip-service.yaml`: Demonstrates a **ClusterIP** service, which provides a stable internal IP address for communication within the cluster. This is the default service type.
- `nodeport-service.yaml`: Shows how to use a **NodePort** service to expose an application on a static port on each node in the cluster, making it accessible from outside the cluster.
- `headless-service.yaml`: An example of a **Headless** service, which is used when you want to connect directly to the Pods backing a service, without a load-balancing proxy. This is often used with StatefulSets.

## Service Types

- **ClusterIP**: Exposes the Service on a cluster-internal IP. This is the default.
- **NodePort**: Exposes the Service on each Node's IP at a static port.
- **LoadBalancer**: Exposes the Service externally using a cloud provider's load balancer.
- **ExternalName**: Maps the Service to the contents of an `externalName` field (e.g., `foo.bar.example.com`), by returning a CNAME record with its value.

## Commands

```bash
# Create a service
kubectl apply -f clusterip-service.yaml

# Test connectivity from a temporary pod
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: test-pod
spec:
  containers:
  - name: busybox
    image: busybox:1.35
    command: ['sh', '-c', 'wget -qO- my-service && sleep 3600']
  restartPolicy: Never
EOF

# Check the logs of the test pod
kubectl logs test-pod

# Check the endpoints of a service
kubectl get endpoints my-service
```