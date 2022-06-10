#!/bin/bash
set -eu

INIT_FLAG=$WORKSPACE_DIR/.workspace.initialized

if [ -r "$REAL_WORKSPACE_DIR" ]; then
    if [ -r "$INIT_FLAG" ]
    then
        echo "$REAL_WORKSPACE_DIR has already been initialized..."
    else
      echo "Initializing workspace from $REAL_WORKSPACE_DIR..."

      # Launches a small web server that just serves the waiting page
      # it uses system python because the user python is being moved from /.workspace.init to /workspace
      cd /tmp/wait-notebook-init
      python3 -m http.server --bind 0.0.0.0 8080 &
      PID_WAIT=$!

      (shopt -s dotglob; mv $REAL_WORKSPACE_DIR/* $WORKSPACE_DIR/)
      touch $INIT_FLAG
      echo "This file MUST NOT be deleted." >> $INIT_FLAG
      echo "If deleted, the workspace will be overwritten by the initialization process at next notebook start" >> $INIT_FLAG

      echo "Launching every workspace initialisation scripts"
      for script in $( compgen -G "$WORKSPACE_DIR/.init_workspace/*.sh" | sort ) ; do
        echo "--- Launching $script"
        bash "$script"
      done
      rm -rf "$WORKSPACE_DIR/.init_workspace/"

      # Kills the wait page, ready for launching the editor on the same port
      kill $PID_WAIT
    fi
else
    echo "No $REAL_WORKSPACE_DIR folder found, so we did nothing..."
fi

echo "Workspace initialization ended with success"
