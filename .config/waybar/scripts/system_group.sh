#!/bin/bash

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)
mem_used=$(free -h | awk '/Mem:/ {print $3}')
temp_raw=$(cat /sys/class/hwmon/hwmon2/temp1_input)
temp=$((temp_raw / 1000))

echo "{\"text\": \" $cpu%   $mem_used  🌡️$temp°C\"}"
