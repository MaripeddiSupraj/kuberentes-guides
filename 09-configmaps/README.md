# ConfigMaps - Configuration Data

ConfigMaps store non-confidential configuration data in key-value pairs for use by Pods.

## Learning Path

### [01-basic](./01-basic/) - ConfigMap Fundamentals
- Creating ConfigMaps
- Using ConfigMaps in Pods
- Environment variables from ConfigMaps
- Volume mounts for configuration files

### [02-intermediate](./02-intermediate/) - Advanced Configuration Patterns
- Binary data in ConfigMaps
- ConfigMap updates and Pod restarts
- Selective key mounting
- Configuration validation

### [03-advanced](./03-advanced/) - Enterprise Configuration Management
- Configuration templating
- Multi-environment configurations
- Configuration drift detection
- GitOps configuration management

## Usage Patterns

- **Environment Variables** - Inject config as env vars
- **Command Arguments** - Use config in container commands
- **Volume Mounts** - Mount config as files
- **Init Containers** - Process config before main container