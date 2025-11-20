# Advanced Pods

Master complex Pod patterns and enterprise-level configurations.

## Topics Covered

1. **Pod Security Contexts**: Learn how to define security constraints and manage user permissions for Pods and containers.
2. **Advanced Scheduling**: Control how Pods are scheduled onto nodes using node affinity, taints, and tolerations.
3. **Pod Disruption Budgets**: Ensure high availability of your applications during voluntary disruptions like node maintenance.
4. **Sidecar Patterns**: Explore advanced multi-container architectures, such as the logging sidecar pattern.
5. **Pod Presets**: Automatically inject configuration like secrets and volumes into Pods at creation time.

## Examples

- `security-context-pod.yaml`: Demonstrates how to set security contexts for a Pod and its containers, including user and group IDs.
- `node-affinity-pod.yaml`: An example of using node affinity to constrain a Pod to run on specific nodes.
- `pod-disruption-budget.yaml`: Shows how to create a PodDisruptionBudget to maintain application availability.
- `sidecar-logging-pod.yaml`: Implements a logging sidecar container that collects logs from the main application container.
- `tolerations-pod.yaml`: An example of using tolerations to allow a Pod to be scheduled on a tainted node.

## Key Concepts

### Security Contexts
- **runAsUser/runAsGroup**: Specifies the user and group ID to run the container's entrypoint.
- **fsGroup**: Defines a supplemental group that has access to the volume's filesystem.
- **Capabilities**: Grants or denies specific kernel capabilities to a container.
- **SELinux/AppArmor**: Integrates with Linux security modules for mandatory access control.

### Advanced Scheduling
- **Node Affinity**: Constrains which nodes your Pod is eligible to be scheduled on, based on node labels.
- **Pod Affinity/Anti-Affinity**: Constrains which nodes your Pod is eligible to be scheduled on, based on labels of Pods that are already running on the node.
- **Taints and Tolerations**: Taints are applied to nodes, and tolerations are applied to Pods. Tolerations allow Pods to be scheduled on nodes with matching taints.
- **Custom Schedulers**: For highly specialized scheduling needs, you can implement your own custom scheduler.