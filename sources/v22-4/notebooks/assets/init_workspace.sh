#!/bin/bash
set -eu

INIT_FLAG=$WORKSPACE_DIR/.workspace.initialized

if [ -r "$REAL_WORKSPACE_DIR" ]; then
    if [ -r "$INIT_FLAG" ]
    then
        echo "$REAL_WORKSPACE_DIR has already been initialized..."
    elif [ -z "$(ls -A $WORKSPACE_DIR)" ]
    then
      echo "Initializing workspace from $REAL_WORKSPACE_DIR..."

      # Launches a small web server that just serves the waiting page
      # it uses system python because the user python is being moved from /.workspace.init to /workspace
      cd /tmp/wait-notebook-init
      python3 -m http.server --bind 0.0.0.0 8080 &
      PID_WAIT=$!

      (shopt -s dotglob; mv $REAL_WORKSPACE_DIR/* $WORKSPACE_DIR/)
      touch $INIT_FLAG

      GIT_TERMINAL_PROMPT=0 git clone https://github.com/ovh/ai-training-examples.git $WORKSPACE_DIR/ai-training-examples ||
      echo "Could not clone ai-training-examples, we continue anyway because we don't want to depend on github failure"

      # Kills the wait page, ready for launching the editor on the same port
      kill $PID_WAIT
    else
      echo "Workspace was not empty, so we considered it as already initialized..."
    fi
else
    echo "No $REAL_WORKSPACE_DIR folder found, so we did nothing..."
fi

echo "Workspace initialization ended with success"
