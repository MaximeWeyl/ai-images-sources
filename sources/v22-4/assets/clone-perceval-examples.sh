#!/bin/bash
set -eu
set -o pipefail

# check if the Perceval folder exists with the .fake file that indicates
# that the folder "$WORKSPACE_DIR"/Perceval comes from the Build
# be careful with that as the customer may link his own directory
# to this path and you don't want to override this data
# the only purpose of the .fake is to check if the repo is up to date
# otherwise remove it and reclone in order to have the latest notebooks
if [ -f "$WORKSPACE_DIR"/Perceval/.fake ] 
then 
  rm -rf "$WORKSPACE_DIR"/Perceval

  GIT_TERMINAL_PROMPT=0 git clone https://github.com/Quandela/Perceval.git "$WORKSPACE_DIR"/Perceval || {
    echo "Could not clone Perceval, we continue anyway because we don't want to depend on github failure"
  }

  mv "$WORKSPACE_DIR"/Perceval/docs/source/notebooks "$WORKSPACE_DIR"/perceval-examples && rm -rf "$WORKSPACE_DIR"/Perceval || {
    echo "Could not move Perceval notebooks, we continue anyway because we don't want to depend on a remote repo"
  }
else
  echo "Perceval folder is different than the one in the Build, we skip cloning"
  echo "The user may have mounted an object storage above it"
fi 

# We do not want the usual ai examples to be loaded
echo "echo 'Overwritten, does nothing'" > "$WORKSPACE_DIR"/.init_workspace/50-clone-ai-examples.sh
