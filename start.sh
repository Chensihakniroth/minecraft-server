#!/bin/bash
# Start playit agent in the background
playit &

# Use the official entrypoint script
exec /opt/bedrock-entry.sh
