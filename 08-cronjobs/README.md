# CronJobs - Scheduled Tasks

A CronJob creates Jobs on a time-based schedule, similar to the `cron` utility in Unix-like operating systems. CronJobs are useful for running periodic tasks, such as backups, report generation, and other automated jobs.

## Learning Path

### [01-basic](./01-basic/) - CronJob Fundamentals
- **Creating CronJobs**: Learn how to create a CronJob to run a Job on a schedule.
- **Cron schedule syntax**: Understand the syntax for defining the schedule for a CronJob.
- **Job history and cleanup**: Configure policies to automatically clean up completed and failed Jobs created by a CronJob.
- **Timezone handling**: Learn how to specify the timezone for a CronJob's schedule.

### [02-intermediate](./02-intermediate/) - Advanced Scheduling
- **Complex cron expressions**: Use more complex cron expressions to define intricate schedules.
- **Concurrency policies**: Configure the concurrency policy for a CronJob to control how it handles overlapping Jobs.
- **Failed job handling**: Define policies for handling failed Jobs created by a CronJob.
- **Resource management**: Set resource requests and limits for the Pods created by a CronJob.

### [03-advanced](./03-advanced/) - Enterprise Scheduling
- **Multi-cluster scheduling**: Schedule Jobs across multiple Kubernetes clusters.
- **Job dependencies and workflows**: Create complex workflows by creating dependencies between Jobs.
- **Custom schedulers**: Build your own custom schedulers to manage CronJobs.
- **Monitoring and alerting**: Set up monitoring and alerting for your CronJobs to ensure they are running as expected.

## Cron Schedule Examples

- `0 2 * * *`: Runs daily at 2 AM.
- `*/15 * * * *`: Runs every 15 minutes.
- `0 0 * * 0`: Runs weekly on Sunday at midnight.
- `0 0 1 * *`: Runs monthly on the first day of the month at midnight.

## Quick Start

```bash
# Create a simple CronJob
kubectl apply -f 01-basic/backup-cronjob.yaml

# Check the status of the CronJob
kubectl get cronjobs

# See the Jobs created by the CronJob
kubectl get jobs --watch
```