# ReplicaSets - Pod Replication and Scaling

A ReplicaSet's primary purpose is to ensure that a specified number of Pod replicas are running at any given time. It helps maintain the desired state of your application by automatically creating or deleting Pods as needed.

**Note:** While you can use ReplicaSets directly, it is highly recommended to manage them using **Deployments**. Deployments provide declarative updates and other useful features on top of ReplicaSets.

## Learning Path

### [01-basic](./01-basic/) - ReplicaSet Fundamentals
- **Creating ReplicaSets**: Learn how to define and create a ReplicaSet to manage a set of Pods.
- **Pod selection with labels**: Understand how ReplicaSets use label selectors to identify which Pods to manage.
- **Scaling replicas**: Scale the number of Pods in a ReplicaSet up or down.
- **ReplicaSet vs Deployment**: Learn about the differences between ReplicaSets and Deployments and when to use each.

### [02-intermediate](./02-intermediate/) - Advanced ReplicaSet Management
- **Complex label selectors**: Use more advanced label selectors to manage Pods with specific characteristics.
- **Pod template updates**: Understand how to update the Pod template of a ReplicaSet and the implications of doing so.
- **Orphaned Pods handling**: Learn how Kubernetes handles Pods that are no longer managed by a ReplicaSet.
- **ReplicaSet ownership**: Understand how ReplicaSets are owned and managed by higher-level objects like Deployments.

### [03-advanced](./03-advanced/) - Enterprise Patterns
- **Custom controllers using ReplicaSets**: Explore how to build custom controllers that leverage ReplicaSets.
- **Advanced scheduling with ReplicaSets**: Combine ReplicaSets with advanced scheduling features like taints and tolerations.
- **Multi-zone replica distribution**: Distribute replicas across multiple availability zones for high availability.
- **ReplicaSet monitoring and alerting**: Set up monitoring and alerting for your ReplicaSets to ensure they are functioning correctly.

## Key Concepts

- **Desired State**: A ReplicaSet works to maintain a specified number of replicas, as defined in its configuration.
- **Label Selectors**: It uses label selectors to identify the Pods that it should manage.
- **Pod Templates**: A ReplicaSet contains a Pod template, which is used as a blueprint for creating new Pods.
- **Self-healing**: If a Pod managed by a ReplicaSet fails, the ReplicaSet controller will automatically replace it to maintain the desired number of replicas.

## Quick Start

```bash
# Create a simple ReplicaSet
kubectl apply -f 01-basic/simple-replicaset.yaml

# Check the status of the ReplicaSet
kubectl get replicasets

# Scale the ReplicaSet to 5 replicas
kubectl scale replicaset my-replicaset --replicas=5
```