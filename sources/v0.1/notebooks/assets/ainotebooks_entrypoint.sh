#!/usr/bin/env bash
set -eu
test -x /usr/local/bin/extract_workspace.sh && /usr/local/bin/extract_workspace.sh

/usr/bin/aitraining_entrypoint.sh
