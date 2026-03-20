#!/bin/bash
echo "--- PLAYIT HELP OUTPUT ---"
playit --help | head -n 20
echo "--- END HELP ---"

echo "--- STARTING PLAYIT.GG AGENT ---"
# Most legacy versions just use 'playit' to start.
# Newer versions use 'playit run'.
# We will try 'playit' first as the logs didn't like 'run'.
playit &

# Wait for the claim link to appear
sleep 15

echo "--- STARTING MINECRAFT SERVER ---"
exec /opt/bedrock-entry.sh
