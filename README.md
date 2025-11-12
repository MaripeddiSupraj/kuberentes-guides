# Kubernetes Guides - Complete Learning Path

A comprehensive collection of Kubernetes guides organized by topics and difficulty levels.

## 📚 Learning Path Structure

Each topic is organized into three difficulty levels:
- **01-basic**: Fundamental concepts and simple examples
- **02-intermediate**: Real-world scenarios and best practices  
- **03-advanced**: Complex configurations and enterprise patterns

## 🗂️ Topics Covered

### Core Workload Resources
- [**01-pods**](./01-pods/) - Basic building blocks of Kubernetes
- [**02-services**](./02-services/) - Service discovery and networking
- [**03-deployments**](./03-deployments/) - Application deployment and management
- [**04-replicasets**](./04-replicasets/) - Pod replication and scaling
- [**05-daemonsets**](./05-daemonsets/) - Node-level services
- [**06-statefulsets**](./06-statefulsets/) - Stateful applications
- [**07-jobs**](./07-jobs/) - Batch processing
- [**08-cronjobs**](./08-cronjobs/) - Scheduled tasks

### Configuration Management
- [**09-configmaps**](./09-configmaps/) - Configuration data
- [**10-secrets**](./10-secrets/) - Sensitive information

### Storage & Persistence
- [**11-volumes**](./11-volumes/) - Data persistence and storage
- [**12-persistent-volumes**](./12-persistent-volumes/) - Advanced storage management
- [**13-storage-classes**](./13-storage-classes/) - Dynamic provisioning

### Networking
- [**14-ingress**](./14-ingress/) - External access and load balancing
- [**15-network-policies**](./15-network-policies/) - Network security and isolation
- [**16-service-mesh**](./16-service-mesh/) - Advanced service communication

### Scaling & Autoscaling
- [**17-horizontal-pod-autoscaler**](./17-horizontal-pod-autoscaler/) - Horizontal scaling
- [**18-vertical-pod-autoscaler**](./18-vertical-pod-autoscaler/) - Vertical scaling
- [**19-cluster-autoscaler**](./19-cluster-autoscaler/) - Node scaling

### Resource Management
- [**20-resource-quotas**](./20-resource-quotas/) - Namespace resource limits
- [**21-limit-ranges**](./21-limit-ranges/) - Default resource constraints
- [**22-pod-disruption-budgets**](./22-pod-disruption-budgets/) - Availability guarantees

### Security
- [**23-pod-security-policies**](./23-pod-security-policies/) - Pod security controls (deprecated)
- [**24-pod-security-standards**](./24-pod-security-standards/) - Modern pod security
- [**25-rbac**](./25-rbac/) - Role-based access control
- [**26-service-accounts**](./26-service-accounts/) - Pod identity
- [**27-cluster-roles**](./27-cluster-roles/) - Cluster-wide permissions
- [**28-network-security**](./28-network-security/) - Network-level security
- [**29-admission-controllers**](./29-admission-controllers/) - Request validation and mutation

### Extensibility
- [**30-custom-resources**](./30-custom-resources/) - Extending Kubernetes API
- [**31-operators**](./31-operators/) - Custom controllers and operators

### Package Management & GitOps
- [**32-helm**](./32-helm/) - Package management
- [**33-kustomize**](./33-kustomize/) - Configuration management
- [**42-gitops**](./42-gitops/) - Git-based deployments
- [**43-ci-cd**](./43-ci-cd/) - Continuous integration and deployment

### Observability
- [**34-monitoring**](./34-monitoring/) - Metrics and monitoring
- [**35-logging**](./35-logging/) - Log aggregation and analysis
- [**36-tracing**](./36-tracing/) - Distributed tracing
- [**37-alerting**](./37-alerting/) - Alert management

### Operations & Maintenance
- [**38-backup-restore**](./38-backup-restore/) - Data protection
- [**39-disaster-recovery**](./39-disaster-recovery/) - Business continuity
- [**40-multi-cluster**](./40-multi-cluster/) - Multi-cluster management
- [**41-federation**](./41-federation/) - Cluster federation
- [**50-cluster-maintenance**](./50-cluster-maintenance/) - Cluster lifecycle

### Security & Compliance
- [**44-security-scanning**](./44-security-scanning/) - Vulnerability scanning
- [**45-compliance**](./45-compliance/) - Compliance frameworks

### Optimization & Troubleshooting
- [**46-cost-optimization**](./46-cost-optimization/) - Resource cost management
- [**47-troubleshooting**](./47-troubleshooting/) - Problem diagnosis
- [**48-debugging**](./48-debugging/) - Application debugging
- [**49-performance-tuning**](./49-performance-tuning/) - Performance optimization

## 🚀 Getting Started

1. Start with [01-pods/01-basic](./01-pods/01-basic/) for absolute beginners
2. Progress through each topic's basic level first
3. Move to intermediate and advanced as you gain confidence
4. Practice with the provided examples in each section

## 📋 Prerequisites

- Basic understanding of containers and Docker
- Access to a Kubernetes cluster (minikube, kind, or cloud provider)
- kubectl installed and configured

## 🛠️ Setup Instructions

```bash
# Clone this repository
git clone <your-repo-url>
cd kuberentes-guides

# Verify kubectl access
kubectl cluster-info

# Start with basic pod examples
cd 01-pods/01-basic
```

Happy learning! 🎉