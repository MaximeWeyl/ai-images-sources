#!/bin/bash
set -eu
set -o pipefail


if [ ! -e "$WORKSPACE_DIR"/ai-training-examples ]
then
  GIT_TERMINAL_PROMPT=0 git clone https://github.com/ovh/ai-training-examples.git $WORKSPACE_DIR/ai-training-examples ||
  echo "Could not clone ai-training-examples, we continue anyway because we don't want to depend on github failure"
else
  echo "We wanted to clone ai-training-examples, but the path already existed"
  echo "The user may have mounted an object here"
  echo "We skipped the cloning"
fi
