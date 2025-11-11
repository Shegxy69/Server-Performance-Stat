
#!/bin/bash

# Directory for logs
LOG_DIR="$HOME/server-logs"
mkdir -p "$LOG_DIR"

# Log file with timestamp
LOG_FILE="$LOG_DIR/server-stats-$(date +%Y%m%d-%H%M%S).log"

# Run the script and save to log
$HOME/server-stats.sh | tee "$LOG_FILE"

echo ""
echo "Report saved to: $LOG_FILE"



