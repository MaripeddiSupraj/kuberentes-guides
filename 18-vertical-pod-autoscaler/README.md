# Vertical Pod Autoscaler - Vertical Scaling

The Vertical Pod Autoscaler (VPA) automatically adjusts the CPU and memory reservations for your Pods to help you right-size your applications. It can also be used to get recommendations for resource requests and limits.

**Note:** The Vertical Pod Autoscaler is not yet a standard Kubernetes component and needs to be installed separately.

## Learning Path

### [01-basic](./01-basic/) - VPA Fundamentals
- **Installing VPA**: Learn how to install the Vertical Pod Autoscaler in your Kubernetes cluster.
- **Creating VPA resources**: Create a VerticalPodAutoscaler object to automatically adjust the resource requests of a Deployment.
- **Update modes (Off, Initial, Auto)**: Understand the different update modes for a VPA, such as `Off`, `Initial`, and `Auto`.
- **Resource recommendations**: Use the VPA to get recommendations for resource requests and limits for your applications.

### [02-intermediate](./02-intermediate/) - Advanced VPA Usage
- **Custom resource policies**: Use custom resource policies to control how the VPA adjusts the resource requests of your Pods.
- **Multi-container VPA**: Use the VPA to manage the resource requests of multiple containers in a single Pod.
- **VPA with HPA**: Use the VPA and the Horizontal Pod Autoscaler (HPA) together to automatically scale your applications both vertically and horizontally.
- **Monitoring and metrics**: Monitor the performance of the VPA and view its metrics.

### [03-advanced](./03-advanced/) - Enterprise VPA Management
- **VPA in production**: Learn about best practices for using the VPA in a production environment.
- **Cost optimization**: Use the VPA to optimize the cost of your Kubernetes cluster by right-sizing your applications.
- **Performance tuning**: Use the VPA to tune the performance of your applications.
- **Integration with monitoring**: Integrate the VPA with your monitoring system to get a better understanding of your application's resource usage.

## Update Modes

- **Off**: The VPA will only provide recommendations and will not automatically update the resource requests of your Pods.
- **Initial**: The VPA will only set the resource requests of your Pods when they are created.
- **Auto**: The VPA will automatically update the resource requests of your Pods while they are running.

## Quick Start

```bash
# Install the Vertical Pod Autoscaler
# (Follow the instructions in the official VPA documentation)

# Apply the VPA example
kubectl apply -f 01-basic/vpa-example.yaml

# Check the status of the VPA
kubectl get vpa
```