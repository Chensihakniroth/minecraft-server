#!/bin/bash
echo "--- STARTING PLAYIT.GG AGENT ---"
# Start playit with the 'run' command in the background
playit run &

# Wait a few seconds for the claim link to appear in the main logs
sleep 15

echo "--- STARTING MINECRAFT SERVER ---"
exec /opt/bedrock-entry.sh
