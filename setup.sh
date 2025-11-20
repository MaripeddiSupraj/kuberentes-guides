#!/bin/bash
set -e

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
echo "📚 For the full learning path, please see LEARNING_PATH.md"

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
echo "To clean up the test pod:"
echo "cd 01-pods/01-basic && kubectl delete -f simple-pod.yaml"


echo ""
echo "Happy learning! 🎉"