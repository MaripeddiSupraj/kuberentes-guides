# Kubernetes Learning Path

This document outlines a structured learning path for mastering Kubernetes, from fundamental concepts to advanced topics. Each module is organized into `basic`, `intermediate`, and `advanced` subdirectories to allow for progressive learning.

## Beginner Track (Start Here)
This track covers the essential concepts you need to get started with Kubernetes.

1. **[01-pods/01-basic](./01-pods/01-basic/)** - Understanding Pods: The smallest deployable units in Kubernetes.
2. **[02-services/01-basic](./02-services/01-basic/)** - Service Discovery: How applications and microservices connect.
3. **[03-deployments/01-basic](./03-deployments/01-basic/)** - Application Deployment: Managing application lifecycles.
4. **[09-configmaps/01-basic](./09-configmaps/01-basic/)** - Configuration Management: Externalizing configuration from application code.
5. **[10-secrets/01-basic](./10-secrets/01-basic/)** - Sensitive Data: Managing secrets like passwords and API keys.

## Intermediate Track
This track builds on the beginner concepts and introduces more complex topics.

1. **[04-replicasets/01-basic](./04-replicasets/01-basic/)** - Pod Replication: Ensuring a specified number of pod replicas are running.
2. **[06-statefulsets/01-basic](./06-statefulsets/01-basic/)** - Stateful Apps: Managing stateful applications.
3. **[11-volumes/01-basic](./11-volumes/01-basic/)** - Data Persistence: Storing data across pod restarts.
4. **[14-ingress/01-basic](./14-ingress/01-basic/)** - External Access: Exposing HTTP and HTTPS routes from outside the cluster to services within the cluster.
5. **[17-horizontal-pod-autoscaler/01-basic](./17-horizontal-pod-autoscaler/01-basic/)** - Auto-scaling: Automatically scaling the number of pods.

## Advanced Track
This track covers advanced topics for experienced users.

1. **[25-rbac/01-basic](./25-rbac/01-basic/)** - Security and Permissions: Role-Based Access Control.
2. **[30-custom-resources/01-basic](./30-custom-resources/01-basic/)** - Extending Kubernetes: Creating custom resources (CRDs).
3. **[31-operators/01-basic](./31-operators/01-basic/)** - Custom Controllers: Building custom controllers (Operators).
4. **[32-helm/01-basic](./32-helm/01-basic/)** - Package Management: Using Helm to manage Kubernetes applications.
5. **[34-monitoring/01-basic](./34-monitoring/01-basic/)** - Observability: Monitoring and logging.

## Specialized Tracks
These tracks focus on specific areas of Kubernetes.

### Operations Track
- [38-backup-restore](./38-backup-restore/)
- [47-troubleshooting](./47-troubleshooting/)
- [50-cluster-maintenance](./50-cluster-maintenance/)

### Security Track
- [24-pod-security-standards](./24-pod-security-standards/)
- [28-network-security](./28-network-security/)
- [44-security-scanning](./44-security-scanning/)

### DevOps Track
- [42-gitops](./42-gitops/)
- [43-ci-cd](./43-ci-cd/)
- [33-kustomize](./33-kustomize/)

## Quick Commands Reference

To get started with the learning path, clone this repository and follow the tracks. Each module contains practical examples.

```bash
# Start learning
cd 01-pods/01-basic
kubectl apply -f simple-pod.yaml

# Check resources
kubectl get pods,services,deployments

# Clean up
kubectl delete -f .
```