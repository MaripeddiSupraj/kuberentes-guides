# Pod Disruption Budgets - Availability Guarantees

PDBs ensure minimum availability during voluntary disruptions like node maintenance or cluster upgrades.

## Learning Path

### [01-basic](./01-basic/) - PDB Fundamentals
- Creating Pod Disruption Budgets
- minAvailable vs maxUnavailable
- Selector-based targeting
- Disruption scenarios

### [02-intermediate](./02-intermediate/) - Advanced PDB Patterns
- Complex selector strategies
- Multi-deployment PDBs
- PDB monitoring
- Integration with deployments

### [03-advanced](./03-advanced/) - Enterprise Availability
- Cross-zone PDBs
- Application-aware disruption
- Automated PDB management
- SLA compliance

## Disruption Types

- **Voluntary** - Node maintenance, upgrades
- **Involuntary** - Hardware failures, kernel panics
- **Eviction** - Resource pressure, preemption