#!/bin/bash
# This script backgrounds itself immediately

# Background the actual work
(
    # Your actual health check code here
    echo "$(date): Running system health check in background" >> /var/log/system-health.log
    
    # Add your health check commands
    uptime >> /var/log/system-health.log
    free -h >> /var/log/system-health.log
    df -h >> /var/log/system-health.log
    
    # Any other tasks
) > /dev/null 2>&1 &  # Run in background with output suppressed

# Exit immediately so Flag.sh continues
exit 0
