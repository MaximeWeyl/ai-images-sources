#!/usr/bin/env bash
set -eu

if [[ -z "${JOB_ID:-}" ]]; then
    URL=${NOTEBOOK_URL_SCHEME:-}${NOTEBOOK_ID:-id}-8080.${NOTEBOOK_HOST:-host}
else
    URL=${JOB_URL_SCHEME:-}${JOB_ID:-id}-8080.${JOB_HOST:-host}
fi

if [[ -z "${EDITOR_OPTIONS:-}" ]]; then
  echo "No extra options were set for the jupyterlab editor"
else
  echo "Jupyterlab extra options are : ${EDITOR_OPTIONS}"
fi

# EDITOR_OPTIONS must be split
# shellcheck disable=SC2086
/lab/bin/jupyter lab --ip=0.0.0.0 --port=8080 --no-browser --allow-root \
  --LabApp.token='' \
  --LabApp.custom_display_url="${URL}" \
  --LabApp.allow_remote_access=True \
  --LabApp.allow_origin='*' \
  --LabApp.disable_check_xsrf=True \
  ${EDITOR_OPTIONS:-} &

/usr/bin/job_closer.sh
