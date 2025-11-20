# Limit Ranges - Default Resource Constraints

A LimitRange is a policy to constrain resource allocations (to Pods or Containers) in a namespace. It can enforce minimum, maximum, and default resource constraints.

## Learning Path

### [01-basic](./01-basic/) - Limit Range Fundamentals
- **Creating Limit Ranges**: Learn how to create a LimitRange to enforce resource constraints in a namespace.
- **Default resource limits**: Set default resource requests and limits for Pods and Containers that do not specify their own.
- **Min/max constraints**: Enforce minimum and maximum resource constraints for Pods and Containers.
- **Container vs Pod limits**: Understand the difference between container-level and pod-level resource constraints.

### [02-intermediate](./02-intermediate/) - Advanced Limit Management
- **Storage limit ranges**: Use LimitRanges to constrain the amount of storage that can be requested by PersistentVolumeClaims.
- **PVC constraints**: Enforce minimum and maximum storage requests for PersistentVolumeClaims.
- **Ratio-based limits**: Enforce a ratio between resource requests and limits.
- **Multiple limit ranges**: Use multiple LimitRanges in a single namespace.

### [03-advanced](./03-advanced/) - Enterprise Resource Governance
- **Policy-based limits**: Implement policy-based resource limits using tools like OPA/Gatekeeper.
- **Dynamic limit adjustment**: Automatically adjust your LimitRanges based on the needs of your applications.
- **Compliance enforcement**: Use LimitRanges to enforce compliance requirements.
- **Resource optimization**: Use LimitRanges to optimize the resource usage of your Kubernetes cluster.

## Constraint Types

- **Default**: The default resource limit for a container if it is not specified.
- **DefaultRequest**: The default resource request for a container if it is not specified.
- **Min**: The minimum resource request that a container can have.
- **Max**: The maximum resource limit that a container can have.

## Quick Start

```bash
# Create a LimitRange
kubectl apply -f 01-basic/container-limits.yaml

# Check the status of the LimitRange
kubectl get limitranges
```