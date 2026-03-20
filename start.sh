#!/bin/bash
echo "--- STARTING PLAYIT.GG AGENT ---"
playit &
sleep 5 # Wait a few seconds for the claim link to generate
echo "--- STARTING MINECRAFT SERVER ---"

# Use the official entrypoint script
exec /opt/bedrock-entry.sh
