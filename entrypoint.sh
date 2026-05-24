#!/bin/bash
cd /home/container

MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo "Starting server with command: ${MODIFIED_STARTUP}"
bash -c "${MODIFIED_STARTUP}"
