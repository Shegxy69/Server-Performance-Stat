#!/bin/bash

###############################################
# Script: server-stats.sh
# Description: Analyze basic server performance
# Author: Oluwasegun Shobajo
# Date: 2024-11-11
###############################################

echo "========================================"
echo "    SERVER PERFORMANCE STATS"
echo "========================================"
echo ""

# ========================================
# 1. TOTAL CPU USAGE
# ========================================
echo "1. Total CPU Usage:"
echo "-------------------"

# Get CPU usage using top command
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
echo "CPU Usage: ${cpu_usage}%"
echo ""


# ========================================
# 2. TOTAL MEMORY USAGE
# ========================================
echo "2. Total Memory Usage:"
echo "----------------------"

# Get memory stats using free command
total_mem=$(free -m | awk 'NR==2{print $2}')
used_mem=$(free -m | awk 'NR==2{print $3}')
free_mem=$(free -m | awk 'NR==2{print $4}')

# Calculate percentage
mem_percentage=$(awk "BEGIN {printf \"%.2f\", ($used_mem/$total_mem)*100}")

echo "Total Memory: ${total_mem} MB"
echo "Used Memory: ${used_mem} MB"
echo "Free Memory: ${free_mem} MB"
echo "Memory Usage: ${mem_percentage}%"
echo ""

# ========================================
# 3. TOTAL DISK USAGE
# ========================================
echo "3. Total Disk Usage:"
echo "--------------------"

# Get disk usage for root partition
disk_usage=$(df -h / | awk 'NR==2{print $5}' | sed 's/%//')
disk_total=$(df -h / | awk 'NR==2{print $2}')
disk_used=$(df -h / | awk 'NR==2{print $3}')
disk_free=$(df -h / | awk 'NR==2{print $4}')

echo "Total Disk: ${disk_total}"
echo "Used Disk: ${disk_used}"
echo "Free Disk: ${disk_free}"
echo "Disk Usage: ${disk_usage}%"
echo ""


# ========================================
# 4. TOP 5 PROCESSES BY CPU USAGE
# ========================================
echo "4. Top 5 Processes by CPU Usage:"
echo "---------------------------------"
ps aux --sort=-%cpu | awk 'NR<=6{printf "%-10s %-8s %-8s %s\n", $2, $3, $4, $11}'
echo ""

# ========================================
# 5. TOP 5 PROCESSES BY MEMORY USAGE
# ========================================
echo "5. Top 5 Processes by Memory Usage:"
echo "------------------------------------"
ps aux --sort=-%mem | awk 'NR<=6{printf "%-10s %-8s %-8s %s\n", $2, $3, $4, $11}'
echo ""


# ========================================
# 6. SYSTEM INFORMATION (STRETCH GOALS)
# ========================================
echo "6. Additional System Information:"
echo "----------------------------------"

# OS Version
echo "OS Version:"
cat /etc/os-release | grep "PRETTY_NAME" | cut -d'"' -f2
echo ""

# System Uptime
echo "System Uptime:"
uptime -p
echo ""

# Load Average
echo "Load Average:"
uptime | awk -F'load average:' '{print $2}'
echo ""

# Logged in Users
echo "Logged in Users:"
who | wc -l
who
echo ""

# Failed Login Attempts (requires root/sudo)
echo "Failed Login Attempts:"
if [ -f /var/log/secure ]; then
    failed_logins=$(sudo grep "Failed password" /var/log/secure 2>/dev/null | wc -l)
    echo "Total failed login attempts: ${failed_logins}"
else
    echo "Log file not accessible or doesn't exist (try running with sudo)"
fi
echo ""

echo "========================================"
echo "    END OF REPORT"
echo "========================================"


#!/bin/bash

LOG_FILE="$LOG_DIR/server-stats-$(date +%Y%m%d-%H%M%S).log"

# Create log directory if it doesn't exist
mkdir -p "$LOG_DIR"




















