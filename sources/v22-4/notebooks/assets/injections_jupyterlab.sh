#!/bin/bash

set -eu
set -o pipefail

echo "Installing ipywidgets in the work environment"

# caution : this version corresponds to the one in the /lab environment
pip install ipywidgets=="7.6.5"

# Installation of the ipykernel in the main python environment if it not already installed
# The name python3 is important if you want the /lab environment to be excluded from the launcher
# If the kernel is already installed, it does nothing
if [[ $(/lab/bin/jupyter kernelspec list | grep 'python3 */usr/local/share/jupyter/kernels/python3') ]]
then
  echo "Existing kernel found, we skip kernel installation."
else
  python -m pip install ipykernel && ipython kernel install --name python3 --display-name "${OVH_ENV_NAME:-Main Python}" --user --env PATH "$(dirname "$( which python )"):$PATH"
  rm -rf "$HOME"/.cache
fi
