#!/bin/bash
cd /home/container

# Display environment variables for debugging
echo "Starting container with the following environment:"
echo "Server Port: ${SERVER_PORT}"

# Replace Pterodactyl startup variable
MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo "Starting server with command: ${MODIFIED_STARTUP}"

# Run the startup command
eval "${MODIFIED_STARTUP}"
