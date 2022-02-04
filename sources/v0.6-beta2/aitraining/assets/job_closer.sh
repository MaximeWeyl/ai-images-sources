#!/bin/bash
# This script should be called by your job entrypoint
# It allows you to exit the job from the inside, with the exit_job script

while true ; do
  if [ -f /tmp/.job_closer ]; then
    exit_status="$(cat /tmp/.job_closer)"
    echo "Exiting the job with status $exit_status"
    rm -f /tmp/.job_closer
    exit "$exit_status"
  fi
  sleep 5
done
