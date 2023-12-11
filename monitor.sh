#!/bin/bash

echo "timestamp: $(date '+%Y-%m-%d %H:%M:%S')"


echo "CPU Load: $(uptime | awk '{print $NF}')"
echo "Memory Usage: $(free -m | awk '/Mem/ {printf "%s/%sMB\n", $3, $2}')"
echo "Disk Usage: $(df -h / | awk '/\// {print $5}')"
echo "Network Usage: $(cat '/sys/class/net/eth0/statistics/rx_bytes')"
echo "Active Logged-in Users: $(who | wc -l)"
