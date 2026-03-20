#!/bin/bash
echo "--- STARTING PLAYIT.GG AGENT ---"
# Move --stdout before the command as it's a global option
playit --stdout start &

# Wait for the claim link to appear
sleep 15

echo "--- STARTING MINECRAFT SERVER ---"
exec /opt/bedrock-entry.sh
