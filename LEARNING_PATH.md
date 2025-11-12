# Kubernetes Learning Path

## Beginner Track (Start Here)
1. **[01-pods/01-basic](./01-pods/01-basic/)** - Understanding Pods
2. **[02-services/01-basic](./02-services/01-basic/)** - Service discovery
3. **[03-deployments/01-basic](./03-deployments/01-basic/)** - Application deployment
4. **[09-configmaps/01-basic](./09-configmaps/01-basic/)** - Configuration management
5. **[10-secrets/01-basic](./10-secrets/01-basic/)** - Sensitive data

## Intermediate Track
1. **[04-replicasets/01-basic](./04-replicasets/01-basic/)** - Pod replication
2. **[06-statefulsets/01-basic](./06-statefulsets/01-basic/)** - Stateful apps
3. **[11-volumes/01-basic](./11-volumes/01-basic/)** - Data persistence
4. **[14-ingress/01-basic](./14-ingress/01-basic/)** - External access
5. **[17-horizontal-pod-autoscaler/01-basic](./17-horizontal-pod-autoscaler/01-basic/)** - Auto-scaling

## Advanced Track
1. **[25-rbac/01-basic](./25-rbac/01-basic/)** - Security and permissions
2. **[30-custom-resources/01-basic](./30-custom-resources/01-basic/)** - Extending Kubernetes
3. **[31-operators/01-basic](./31-operators/01-basic/)** - Custom controllers
4. **[32-helm/01-basic](./32-helm/01-basic/)** - Package management
5. **[34-monitoring/01-basic](./34-monitoring/01-basic/)** - Observability

## Specialized Tracks

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

```bash
# Start learning
cd 01-pods/01-basic
kubectl apply -f simple-pod.yaml

# Check resources
kubectl get pods,services,deployments

# Clean up
kubectl delete -f .
```