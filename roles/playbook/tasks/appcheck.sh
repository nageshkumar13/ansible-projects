#!/bin/bash
# Check application status

# List of processes to check
processes="apache|http|pmon|oracle"

# Check if any of the processes are running
if ps cax | egrep "$processes" | grep -v grep >/dev/null; then
  echo "Process is running."
else
  echo "Process is not running."
fi
