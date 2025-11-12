#!/bin/bash

# Kubernetes Guides Setup Script
# This script helps you get started with the examples

echo "🚀 Kubernetes Guides Setup"
echo "=========================="

# Check if kubectl is installed
if ! command -v kubectl &> /dev/null; then
    echo "❌ kubectl is not installed. Please install kubectl first."
    echo "   Visit: https://kubernetes.io/docs/tasks/tools/"
    exit 1
fi

# Check cluster connectivity
echo "🔍 Checking cluster connectivity..."
if kubectl cluster-info &> /dev/null; then
    echo "✅ Connected to Kubernetes cluster"
    kubectl cluster-info
else
    echo "❌ Cannot connect to Kubernetes cluster"
    echo "   Make sure your cluster is running and kubectl is configured"
    exit 1
fi

echo ""
echo "📚 Available Learning Paths:"
echo "Core Workloads: 01-pods → 02-services → 03-deployments → 04-replicasets"
echo "Workload Types: 05-daemonsets → 06-statefulsets → 07-jobs → 08-cronjobs"
echo "Configuration: 09-configmaps → 10-secrets"
echo "Storage: 11-volumes → 12-persistent-volumes → 13-storage-classes"
echo "Networking: 14-ingress → 15-network-policies → 16-service-mesh"
echo "Scaling: 17-horizontal-pod-autoscaler → 18-vertical-pod-autoscaler"
echo "Security: 25-rbac → 26-service-accounts → 24-pod-security-standards"
echo "Advanced: 30-custom-resources → 31-operators → 32-helm"

echo ""
echo "🛠️  Useful Commands:"
echo "kubectl get pods                 # List pods"
echo "kubectl get services             # List services"
echo "kubectl get deployments          # List deployments"
echo "kubectl describe <resource>      # Get detailed info"
echo "kubectl logs <pod-name>          # View logs"

echo ""
echo "🎯 Quick Test - Create your first pod:"
echo "cd 01-pods/01-basic && kubectl apply -f simple-pod.yaml"

echo ""
echo "Happy learning! 🎉"