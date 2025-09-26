#!/bin/bash

#DATE=$(date)
# "Current date and time (default): $(date)"
# "Current date and time (epoch seconds): $(date +%s)"
# "Current seconds (00-59): $(date +%S)"
# "Current year: $(date +%Y)"
# "Current month: $(date +%m)"
# "Current day: $(date +%d)"
# "Current hour (24h): $(date +%H)"
# "Current minute: $(date +%M)"
# "Current user: $(whoami)"
# "Uptime: $(uptime)"
# "Listing files in current directory:"
# "use date -d @1737954936 to change to date day time format from epoch time"

ls -l
START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script executed in: $TOTAL_TIME Seconds"

#DATE=$(date)
# "Current date and time (default): $(date)"
# "Current date and time (epoch seconds): $(date +%s)"
# sleep =10 is an invalid command it should be sleep 10