#!/bin/bash
# Function to display CPU and memory usage
function display_usage {
    echo "CPU and Memory Usage:"
    echo "===================="
    echo "CPU Usage:"
    top -b -n 1 | grep '%Cpu' | awk '{print "  User: " $2 "\n  System: " $4 "\n  Idle: " $8 "\n"}'
    echo "Memory Usage:"
    free -h | grep Mem | awk '{print "  Total: " $2 "\n  Used: " $3 "\n  Free: " $4 "\n"}'
}

# Function to list top-consuming processes
function list_top_processes {
    echo "Top Consuming Processes:"
    echo "========================"
    ps aux --sort=-%cpu | head -n 6  # Adjust the number to list more or fewer processes
}

# Main execution
display_usage
list_top_processes

#We can run the script with filename.sh 


