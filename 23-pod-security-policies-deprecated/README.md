# Pod Security Policies - Legacy Pod Security (Deprecated)

**⚠️ DEPRECATED**: Pod Security Policies (PSPs) were deprecated in Kubernetes v1.21 and have been **removed** in v1.25. It is highly recommended to use **Pod Security Standards (PSS)** instead.

This section is provided for historical reference and for those who may be working with older Kubernetes clusters.

## Learning Path

### [01-basic](./01-basic/) - PSP Fundamentals (Legacy)
- **Understanding PSPs (deprecated)**: Learn about the concepts behind Pod Security Policies and how they were used to enforce security constraints on Pods.
- **Migration to Pod Security Standards**: Understand the reasons for the deprecation of PSPs and the benefits of migrating to Pod Security Standards.
- **Legacy PSP examples**: Review some examples of legacy Pod Security Policies.
- **Security context enforcement**: Learn how PSPs were used to enforce security contexts on Pods.

### [02-intermediate](./02-intermediate/) - Migration Strategies
- **PSP to Pod Security Standards migration**: Learn how to migrate your existing Pod Security Policies to Pod Security Standards.
- **Policy conversion tools**: Use tools to help you convert your PSPs to PSS.
- **Gradual migration approach**: Take a gradual approach to migrating your PSPs to PSS to minimize disruption.
- **Testing and validation**: Test and validate your new Pod Security Standards to ensure that they are working as expected.

### [03-advanced](./03-advanced/) - Modern Alternatives
- **Pod Security Standards implementation**: Learn how to implement Pod Security Standards in your Kubernetes cluster.
- **OPA Gatekeeper policies**: Use OPA/Gatekeeper to enforce more complex security policies.
- **Admission controllers**: Build your own custom admission controllers to enforce security policies.
- **Third-party policy engines**: Explore third-party policy engines that can be used to enforce security policies in your Kubernetes cluster.

## Migration Path

**⚠️ DEPRECATED**: Use Pod Security Standards instead
- **Replacement**: **Pod Security Standards (PSS)** provide a simpler and more effective way to enforce security policies on Pods.
- **Alternative**: **OPA Gatekeeper** is a powerful open-source policy engine that can be used to enforce a wide range of security policies.
- **Timeline**: Pod Security Policies were **removed** in Kubernetes v1.25.

## Quick Start

To learn more about Pod Security Standards, please refer to the official Kubernetes documentation:

- [Pod Security Standards](https://kubernetes.io/docs/concepts/security/pod-security-standards/)
- [Migrating from PodSecurityPolicy to the Built-In PodSecurity Admission Controller](https://kubernetes.io/docs/tasks/configure-pod-container/migrate-from-psp/)
