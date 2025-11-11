
# Server Performance Stats

A bash script to analyze and monitor Linux server performance statistics.

## 🔗 Project Links

**GitHub Repository:** https://github.com/Shegxy69/Server-Performance-Stat

---

##  Description

This script provides comprehensive server performance metrics including:
- Total CPU usage
- Memory usage (total, used, free, percentage)
- Disk usage (total, used, free, percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- OS version and system information
- System uptime and load average
- Currently logged in users
- Failed login attempts

##  Features

-  Real-time server performance monitoring
-  Easy-to-read formatted output
-  No external dependencies (uses built-in Linux commands)
-  Can be automated with cron jobs
-  Supports log file generation

##  Requirements

- Linux operating system (tested on AlmaLinux 9.6)
- Bash shell
- Basic Linux commands: `top`, `free`, `df`, `ps`, `uptime`, `who`
- `sudo` access (optional, for failed login attempts)

##  Installation

1. Clone this repository:
```bash
git clone https://github.com/Shegxy69/Server-Performance-Stat.git
cd Server-Performance-Stat
```

2. Make the script executable:
```bash
chmod +x server-stats.sh
```

##  Usage

### Basic Usage

Run the script as a normal user:
```bash
./server-stats.sh
```

### With Sudo (to see failed login attempts)
```bash
sudo ./server-stats.sh
```

### Sample Output
```
========================================
    SERVER PERFORMANCE STATS
========================================

1. Total CPU Usage:
-------------------
CPU Usage: 0.0%

2. Total Memory Usage:
----------------------
Total Memory: 1771 MB
Used Memory: 738 MB
Free Memory: 653 MB
Memory Usage: 41.67%

3. Total Disk Usage:
--------------------
Total Disk: 17G
Used Disk: 5.1G
0AFree Disk: 12G
Disk Usage: 30%


 ### Automated Monitoring with Cron

Schedule the script to run automatically:

### Run daily at 9:00 AM
```bash
crontab -e
# Add this line:
0 9 * * * /path/to/server-stats.sh > /path/to/logs/server-stats-$(date +\%Y\%m\%d).log 2>&1
```

### Run every hour
```bash
0 * * * * /path/to/server-stats.sh > /path/to/logs/server-stats-$(date +\%Y\%m\%d-\%H\%M).log 2>&1
```

##  Learning Objectives

This project demonstrates:
- Bash scripting fundamentals
- Linux system administration
- Server monitoring techniques
- Text processing with `awk`, `sed`, `grep`
- Process management
- Automation with cron

## What I Learned

- How to write bash scripts from scratch
- Understanding Linux system metrics (CPU, memory, disk)
- Using text processing tools to extract d
- Automating tasks with cron jobs
- Git and GitHub basics
- DevOps fundamentals

## Troubleshooting

**Issue: Permission denied**
```bash
chmod +x server-stats.sh
```

**Issue: Cannot see failed login attempts**
```bash
sudo ./server-stats.sh
```
## Author: Oluwasegun Shobajo 
  GitHub: [@Shegxy69](https://github.com/Shegxy69)

## 🔗 Project URL
**Live Repository:** https://github.com/Shegxy69/Server-Performance-Stat
  
##  License

This project is open source and available under the MIT License.

##  Acknowledgments

- Project inspired by DevOps learning path
- Thanks to the Linux community for excellent documentation

---

**⭐ If you found this helpful, please star this repository!**
