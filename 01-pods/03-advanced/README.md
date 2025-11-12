# Advanced Pods

Master complex Pod patterns and enterprise-level configurations.

## Topics Covered

1. **Pod Security Contexts** - Security constraints and user management
2. **Advanced Scheduling** - Node affinity, taints, and tolerations
3. **Pod Disruption Budgets** - Availability guarantees during updates
4. **Sidecar Patterns** - Advanced multi-container architectures
5. **Pod Presets** - Automatic injection of configuration

## Examples

- `security-context-pod.yaml` - Security contexts and user management
- `node-affinity-pod.yaml` - Advanced scheduling constraints
- `pod-disruption-budget.yaml` - Availability guarantees
- `sidecar-logging-pod.yaml` - Logging sidecar pattern
- `tolerations-pod.yaml` - Taints and tolerations

## Key Concepts

### Security Contexts
- Run as specific user/group
- Filesystem permissions
- Capabilities management
- SELinux/AppArmor integration

### Advanced Scheduling
- Node affinity (required/preferred)
- Pod affinity/anti-affinity
- Taints and tolerations
- Custom schedulers