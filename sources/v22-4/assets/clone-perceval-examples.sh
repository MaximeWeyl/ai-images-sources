#!/bin/bash
set -eu
set -o pipefail

# We do not want the usual ai examples to be loaded
echo "echo 'Overwritten, does nothing'" > "$WORKSPACE_DIR"/.init_workspace/50-clone-ai-examples.sh
