# GitOps - Git-based Deployments

GitOps is a way of managing your Kubernetes cluster and applications by using Git as a single source of truth. With GitOps, you use Git to store the desired state of your cluster, and then you use a tool like Argo CD or Flux to automatically sync the state of your cluster with the state of your Git repository.

## Learning Path

### [01-basic](./01-basic/) - GitOps Fundamentals
- **GitOps principles**: Understand the core principles of GitOps, such as declarative configuration, version control, and continuous reconciliation.
- **Git-based workflows**: Learn how to use Git to manage your Kubernetes cluster and applications.
- **ArgoCD installation**: Install Argo CD, a popular open-source GitOps tool, in your Kubernetes cluster.
- **Basic application deployment**: Use Argo CD to deploy a simple application to your cluster.

### [02-intermediate](./02-intermediate/) - Advanced GitOps
- **Multi-environment management**: Manage configurations for multiple environments, such as development, staging, and production, using GitOps.
- **Application of Applications pattern**: Use the Application of Applications pattern to manage a large number of applications with Argo CD.
- **Sync policies and hooks**: Use sync policies and hooks to customize the way that Argo CD syncs your applications.
- **Secret management**: Manage secrets in a GitOps workflow using tools like Sealed Secrets or Vault.

### [03-advanced](./03-advanced/) - Enterprise GitOps
- **Multi-cluster GitOps**: Use GitOps to manage multiple Kubernetes clusters from a single Git repository.
- **Policy as Code**: Use Policy as Code tools like OPA/Gatekeeper to enforce policies in your GitOps workflow.
- **Compliance and governance**: Use GitOps to help you comply with security and governance policies.
- **Disaster recovery**: Use GitOps to implement a disaster recovery solution for your Kubernetes cluster.

## GitOps Principles

1. **Declarative**: The entire system is described declaratively in a Git repository.
2. **Versioned and Immutable**: The desired state of the system is versioned and immutable, and is stored in a Git repository.
3. **Pulled Automatically**: The desired state is pulled automatically by software agents running in the cluster.
4. **Continuously Reconciled**: The software agents continuously reconcile the state of the cluster with the desired state in the Git repository.

## Quick Start

```bash
# Install Argo CD
kubectl create namespace argocd
kubectl apply -n argocd -f 01-basic/argocd-install.yaml

# Access the Argo CD UI
kubectl port-forward -n argocd svc/argocd-server 8080:443
```