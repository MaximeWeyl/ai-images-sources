#!/usr/bin/env bash
set -eu

/usr/bin/code-server --bind-addr 0.0.0.0:8080 . --auth none &

/usr/bin/job_closer.sh
