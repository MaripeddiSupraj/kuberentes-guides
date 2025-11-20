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
- [**23-pod-security-standards**](./23-pod-security-standards/) - Modern pod security
- [**24-rbac**](./24-rbac/) - Role-based access control
- [**25-service-accounts**](./25-service-accounts/) - Pod identity
- [**26-cluster-roles**](./26-cluster-roles/) - Cluster-wide permissions
- [**27-network-security**](./27-network-security/) - Network-level security
- [**28-admission-controllers**](./28-admission-controllers/) - Request validation and mutation

### Extensibility
- [**29-custom-resources**](./29-custom-resources/) - Extending Kubernetes API
- [**30-operators**](./30-operators/) - Custom controllers and operators

### Package Management & GitOps
- [**31-helm**](./31-helm/) - Package management
- [**32-kustomize**](./32-kustomize/) - Configuration management
- [**33-gitops**](./33-gitops/) - Git-based deployments
- [**34-ci-cd**](./34-ci-cd/) - Continuous integration and deployment

### Observability
- [**35-monitoring**](./35-monitoring/) - Metrics and monitoring
- [**36-logging**](./36-logging/) - Log aggregation and analysis
- [**37-tracing**](./37-tracing/) - Distributed tracing
- [**38-alerting**](./38-alerting/) - Alert management

### Operations & Maintenance
- [**39-backup-restore**](./39-backup-restore/) - Data protection
- [**40-disaster-recovery**](./40-disaster-recovery/) - Business continuity
- [**41-multi-cluster**](./41-multi-cluster/) - Multi-cluster management
- [**42-federation**](./42-federation/) - Cluster federation
- [**49-cluster-maintenance**](./49-cluster-maintenance/) - Cluster lifecycle

### Security & Compliance
- [**43-security-scanning**](./43-security-scanning/) - Vulnerability scanning
- [**44-compliance**](./44-compliance/) - Compliance frameworks

### Optimization & Troubleshooting
- [**45-cost-optimization**](./45-cost-optimization/) - Resource cost management
- [**46-troubleshooting**](./46-troubleshooting/) - Problem diagnosis
- [**47-debugging**](./47-debugging/) - Application debugging
- [**48-performance-tuning**](./48-performance-tuning/) - Performance optimization

## 📊 Repository Statistics

- **50 Topics** - Complete Kubernetes coverage
- **123 Files** - Working YAML configurations and documentation
- **5,900+ Lines** - Production-ready code examples
- **100% Coverage** - All essential Kubernetes concepts
- **3 Difficulty Levels** - Basic, Intermediate, Advanced

## ✨ Key Features

- **Production-Ready** - All examples include security best practices
- **Progressive Learning** - Structured path from basics to advanced
- **Real-World Examples** - Practical configurations for enterprise use
- **Complete Coverage** - Core workloads, networking, security, operations
- **Modern Practices** - GitOps, service mesh, observability, compliance

## 🚀 Getting Started

1. **Beginners**: Start with [01-pods/01-basic](./01-pods/01-basic/)
2. **Intermediate**: Follow the [LEARNING_PATH.md](./LEARNING_PATH.md)
3. **Advanced**: Explore enterprise patterns in 03-advanced folders
4. **Setup**: Run `./setup.sh` to verify your environment

## 📋 Prerequisites

- Basic understanding of containers and Docker
- Access to a Kubernetes cluster (minikube, kind, or cloud provider)
- kubectl installed and configured

## 🛠️ Setup Instructions

```bash
# Clone this repository
git clone https://github.com/MaripeddiSupraj/kubernetes-guides.git
cd kubernetes-guides

# Run setup script
./setup.sh

# Start learning
cd 01-pods/01-basic
kubectl apply -f simple-pod.yaml
```

Happy learning! 🎉