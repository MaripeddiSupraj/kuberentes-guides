# Pod Disruption Budgets - Availability Guarantees

A PodDisruptionBudget (PDB) is a Kubernetes object that limits the number of Pods of a replicated application that are simultaneously down from voluntary disruptions. PDBs are a powerful tool for ensuring the availability of your applications during planned maintenance, such as node drains and cluster upgrades.

## Learning Path

### [01-basic](./01-basic/) - PDB Fundamentals
- **Creating Pod Disruption Budgets**: Learn how to create a PodDisruptionBudget to protect your applications from voluntary disruptions.
- **minAvailable vs maxUnavailable**: Understand the difference between the `minAvailable` and `maxUnavailable` fields and when to use each.
- **Selector-based targeting**: Use selectors to specify which Pods a PodDisruptionBudget applies to.
- **Disruption scenarios**: Learn about the different types of voluntary disruptions that can affect your applications.

### [02-intermediate](./02-intermediate/) - Advanced PDB Patterns
- **Complex selector strategies**: Use complex selector strategies to create more granular PodDisruptionBudgets.
- **Multi-deployment PDBs**: Create a single PodDisruptionBudget that protects multiple Deployments.
- **PDB monitoring**: Monitor the status of your PodDisruptionBudgets to ensure that they are working as expected.
- **Integration with deployments**: Integrate PodDisruptionBudgets with your Deployments to ensure that your applications are always available.

### [03-advanced](./03-advanced/) - Enterprise Availability
- **Cross-zone PDBs**: Create PodDisruptionBudgets that protect your applications from zone-level failures.
- **Application-aware disruption**: Use application-aware disruption to gracefully handle voluntary disruptions.
- **Automated PDB management**: Automate the creation and management of PodDisruptionBudgets.
- **SLA compliance**: Use PodDisruptionBudgets to help you meet your Service Level Agreements (SLAs).

## Disruption Types

- **Voluntary Disruptions**: These are disruptions that are initiated by the cluster administrator, such as draining a node for maintenance or upgrading the cluster.
- **Involuntary Disruptions**: These are disruptions that are not initiated by the cluster administrator, such as a hardware failure or a kernel panic. PDBs do not protect against involuntary disruptions.

## Quick Start

```bash
# Create a PodDisruptionBudget
kubectl apply -f 01-basic/pdb-example.yaml

# Check the status of the PodDisruptionBudget
kubectl get poddisruptionbudgets
```