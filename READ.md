# Server Performance Stats

A bash script to analyze and monitor Linux server performance statistics.

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

1 Real-time server performance monitoring
2 Easy-to-read formatted output
3 No external dependencies (uses built-in Linux commands)
4 Automated with cron jobs
5 Supports log file generation

##  Requirements

 Linux operating system (tested on AlmaLinux 9.6)
 Bash shell
 Basic Linux commands: `top`, `free`, `df`, `ps`, `uptime`, `who`
 `sudo` access (optional, for failed login attempts)

##  Installation

1. Clone this repository:
```bash
git clone https://github.com/shegxy/server-performance-stats.git
cd server-performance-stats
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
Free Disk: 12G
Disk Usage: 30%

... (and more)
```

##  Automated Monitoring with Cron

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
1 Bash scripting fundamentals
2 Linux system administration
3 Server monitoring techniques
4 Text processing with `awk`, `sed`, `grep`
5 Process management
6 Automation with cron

##  What I Learned

1 How to write bash scripts from scratch
2 Understanding Linux system metrics (CPU, memory, disk)
3 Using text processing tools to extract data
4 Automating tasks with cron jobs
5 Git and GitHub basics
6 DevOps fundamentals

##  Troubleshooting

**Issue: Permission denied**
```bash
chmod +x server-stats.sh
```

**Issue: Cannot see failed login attempts**
```bash
sudo ./server-stats.sh
```

## Author
**Shegxy69**
- GitHub: [@shegxy](https://github.com/shegxy)

## 📝 License

This project is open source and available under the MIT License.

## 🙏 Acknowledgments

- Project inspired by DevOps learning path
- Thanks to the Linux community for excellent documentation

---

**⭐ If you found this helpful, please star this repository!**
