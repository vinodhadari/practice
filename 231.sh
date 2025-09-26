#!/bin/bash

start_time=$(date +%s)
sleep =30

close_time=$(date +%s)

total_time=$(($close_time - $start_time))
echo "Script executed in: $total_time Seconds"
#!/bin/bash
#DATE=$(date)
# "Current date and time (default): $(date)"
# "Current date and time (epoch seconds): $(date +%s)"