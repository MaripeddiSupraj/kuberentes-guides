# CI/CD - Continuous Integration and Deployment

CI/CD is a method to frequently deliver apps to customers by introducing automation into the stages of app development. The main concepts attributed to CI/CD are continuous integration, continuous delivery, and continuous deployment.

## Learning Path

### [01-basic](./01-basic/) - CI/CD Fundamentals
- **Pipeline concepts**: Understand the basic concepts of a CI/CD pipeline, such as stages, jobs, and artifacts.
- **GitHub Actions for Kubernetes**: Learn how to use GitHub Actions to build and deploy your applications to Kubernetes.
- **Basic build and deploy**: Create a basic CI/CD pipeline that builds a container image, pushes it to a container registry, and deploys it to Kubernetes.
- **Container registry integration**: Integrate your CI/CD pipeline with a container registry like Docker Hub or Google Container Registry.

### [02-intermediate](./02-intermediate/) - Advanced CI/CD
- **Multi-environment pipelines**: Create a CI/CD pipeline that can deploy your applications to multiple environments, such as development, staging, and production.
- **Testing strategies**: Implement a testing strategy for your CI/CD pipeline to ensure that your applications are reliable and robust.
- **Security scanning**: Integrate security scanning into your CI/CD pipeline to identify and fix vulnerabilities in your applications.
- **Rollback mechanisms**: Implement a rollback mechanism in your CI/CD pipeline to quickly revert to a previous version of your application if something goes wrong.

### [03-advanced](./03-advanced/) - Enterprise CI/CD
- **Multi-cluster deployments**: Deploy your applications to multiple Kubernetes clusters from a single CI/CD pipeline.
- **Compliance and governance**: Use your CI/CD pipeline to help you comply with security and governance policies.
- **Advanced deployment strategies**: Implement advanced deployment strategies, such as canary releases and blue-green deployments, in your CI/CD pipeline.
- **Pipeline as Code**: Manage your CI/CD pipeline as code using tools like Jenkins Pipeline or GitLab CI.

## Pipeline Stages

- **Build**: The stage where you compile your code and build a container image.
- **Test**: The stage where you run unit tests, integration tests, and other tests to ensure that your application is working correctly.
- **Deploy**: The stage where you deploy your application to Kubernetes.
- **Monitor**: The stage where you monitor the health and performance of your application.

## Quick Start

```bash
# Apply the CI/CD resources
kubectl apply -f 01-basic/k8s-manifests.yaml

# (The GitHub Actions workflow is defined in 01-basic/github-actions.yaml)
```