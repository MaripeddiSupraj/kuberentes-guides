# Pod Security Standards - Modern Pod Security

Pod Security Standards (PSS) are a set of built-in security policies that are applied at the namespace level. They provide three different levels of security: `privileged`, `baseline`, and `restricted`.

## Learning Path

### [01-basic](./01-basic/) - Pod Security Fundamentals
- **Security levels (Privileged, Baseline, Restricted)**: Understand the three different security levels and what they enforce.
- **Namespace-level enforcement**: Learn how to apply Pod Security Standards to a namespace using labels.
- **Pod Security admission controller**: Understand how the Pod Security admission controller works to enforce the Pod Security Standards.
- **Migration from PSPs**: Learn how to migrate from the deprecated Pod Security Policies to the modern Pod Security Standards.

### [02-intermediate](./02-intermediate/) - Advanced Security Policies
- **Custom security contexts**: Use custom security contexts to fine-tune the security of your Pods.
- **Security policy violations**: Understand how to identify and troubleshoot security policy violations.
- **Exemptions and overrides**: Learn how to create exemptions and overrides for the Pod Security Standards.
- **Multi-tenant security**: Use Pod Security Standards to enforce security policies in a multi-tenant cluster.

### [03-advanced](./03-advanced/) - Enterprise Security Governance
- **Policy automation**: Automate the application of Pod Security Standards using tools like OPA/Gatekeeper.
- **Compliance frameworks**: Use Pod Security Standards to help you comply with security frameworks like CIS and NIST.
- **Security scanning integration**: Integrate Pod Security Standards with your security scanning tools.
- **Zero-trust pod security**: Implement a zero-trust security model for your Pods using Pod Security Standards.

## Security Levels

- **Privileged**: The `privileged` policy is unrestricted and allows for known privilege escalations. It is intended for system- and infrastructure-level workloads.
- **Baseline**: The `baseline` policy is a minimally restrictive policy that prevents known privilege escalations. It is intended for a wide range of workloads.
- **Restricted**: The `restricted` policy is a heavily restricted policy that follows current Pod hardening best practices. It is intended for security-critical workloads.

## Quick Start

```bash
# Apply the restricted Pod Security Standard to a namespace
kubectl label namespace my-namespace pod-security.kubernetes.io/enforce=restricted

# Apply a Pod that meets the restricted standard
kubectl apply -f 01-basic/security-levels.yaml
```