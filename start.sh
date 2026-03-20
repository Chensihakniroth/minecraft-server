#!/bin/bash
echo "--- STARTING PLAYIT.GG AGENT ---"
# Use the 'start' command with '--stdout' to ensure the claim link prints to logs
playit start --stdout &

# Wait for the claim link to appear
sleep 15

echo "--- STARTING MINECRAFT SERVER ---"
exec /opt/bedrock-entry.sh
