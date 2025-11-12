# CronJobs - Scheduled Tasks

CronJobs create Jobs on a time-based schedule, similar to cron in Unix systems.

## Learning Path

### [01-basic](./01-basic/) - CronJob Fundamentals
- Creating CronJobs
- Cron schedule syntax
- Job history and cleanup
- Timezone handling

### [02-intermediate](./02-intermediate/) - Advanced Scheduling
- Complex cron expressions
- Concurrency policies
- Failed job handling
- Resource management

### [03-advanced](./03-advanced/) - Enterprise Scheduling
- Multi-cluster scheduling
- Job dependencies and workflows
- Custom schedulers
- Monitoring and alerting

## Cron Schedule Examples

- `0 2 * * *` - Daily at 2 AM
- `*/15 * * * *` - Every 15 minutes
- `0 0 * * 0` - Weekly on Sunday
- `0 0 1 * *` - Monthly on 1st day