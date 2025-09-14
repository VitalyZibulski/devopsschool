#!/bin/bash

REMOTE_USER="ubuntu"
REMOTE_HOST="18.215.145.241"
REMOTE_PATH="/home/ubuntu/cron_files"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILE_NAME="cronfile_${TIMESTAMP}.txt"

ssh ${REMOTE_USER}@${REMOTE_HOST} "
  set -e
    mkdir -p '${REMOTE_PATH}'
    echo 'File was created: ${TIMESTAMP}' > '${REMOTE_PATH}/${FILE_NAME}'
    echo \"\$(date -Is) Created ${FILE_NAME}\" >> '${REMOTE_PATH}/actions.log'
    nohup bash -c '
      sleep 30
      if rm -f \"${REMOTE_PATH}/${FILE_NAME}\"; then
        echo \"\$(date -Is) Deleted ${FILE_NAME}\" >> \"${REMOTE_PATH}/actions.log\"
      else
        echo \"\$(date -Is) Fail of deleting ${FILE_NAME}\" >> \"${REMOTE_PATH}/actions.log\"
      fi
    ' >/dev/null 2>&1 &"